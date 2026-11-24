package net.pecraft.core;

import java.util.Objects;
import org.bukkit.ChatColor;
import org.bukkit.Location;
import org.bukkit.World;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.plugin.java.JavaPlugin;

public final class PESMPCore extends JavaPlugin {
    @Override public void onEnable() {
        saveDefaultConfig();
        Objects.requireNonNull(getCommand("pesmp")).setExecutor(this);
        Objects.requireNonNull(getCommand("setspawn")).setExecutor(this);
        Objects.requireNonNull(getCommand("spawn")).setExecutor(this);
        getLogger().info("PESMPCore enabled.");
    }

    @Override public boolean onCommand(CommandSender sender, Command command, String label, String[] args) {
        switch (command.getName().toLowerCase()) {
            case "pesmp" -> {
                if (args.length == 1 && args[0].equalsIgnoreCase("reload")) {
                    if (!sender.hasPermission("pesmp.admin")) return deny(sender);
                    reloadConfig();
                    sender.sendMessage(color("&8[&5PESMP&8] &aConfiguration reloaded."));
                    return true;
                }
                sender.sendMessage(color("&8[&5PESMP&8] &dPESMP Network &7| &fCore 0.1.0"));
                sender.sendMessage(color("&7Commands: &f/spawn &7and &f/pesmp info"));
                return true;
            }
            case "setspawn" -> {
                if (!(sender instanceof Player player)) {
                    sender.sendMessage("This command can only be used in-game.");
                    return true;
                }
                if (!player.hasPermission("pesmp.admin")) return deny(sender);
                Location l = player.getLocation();
                getConfig().set("spawn.world", l.getWorld().getName());
                getConfig().set("spawn.x", l.getX());
                getConfig().set("spawn.y", l.getY());
                getConfig().set("spawn.z", l.getZ());
                getConfig().set("spawn.yaw", l.getYaw());
                getConfig().set("spawn.pitch", l.getPitch());
                saveConfig();
                player.sendMessage(message("spawn-set"));
                return true;
            }
            case "spawn" -> {
                if (!(sender instanceof Player player)) {
                    sender.sendMessage("This command can only be used in-game.");
                    return true;
                }
                if (!player.hasPermission("pesmp.spawn")) return deny(sender);
                if (!getConfig().isString("spawn.world")) {
                    player.sendMessage(message("spawn-missing"));
                    return true;
                }
                World world = getServer().getWorld(getConfig().getString("spawn.world"));
                if (world == null) {
                    player.sendMessage(message("spawn-missing"));
                    return true;
                }
                Location target = new Location(world,
                    getConfig().getDouble("spawn.x"), getConfig().getDouble("spawn.y"),
                    getConfig().getDouble("spawn.z"), (float)getConfig().getDouble("spawn.yaw"),
                    (float)getConfig().getDouble("spawn.pitch"));
                player.teleportAsync(target).thenAccept(ok -> {
                    if (ok && player.isOnline()) player.sendMessage(message("spawn-teleport"));
                });
                return true;
            }
            default -> { return false; }
        }
    }

    private boolean deny(CommandSender sender) {
        sender.sendMessage(color("&8[&5PESMP&8] &cYou do not have permission."));
        return true;
    }
    private String message(String key) {
        return color(getConfig().getString("messages.prefix", "&8[&5PESMP&8] ")
            + getConfig().getString("messages." + key, ""));
    }
    private String color(String input) { return ChatColor.translateAlternateColorCodes('&', input); }
}