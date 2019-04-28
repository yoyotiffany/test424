//import redis.clients.jedis.HostAndPort;
//import redis.clients.jedis.JedisCluster;
//import redis.clients.jedis.JedisPoolConfig;
//
//import java.io.IOException;
//import java.util.LinkedHashSet;
//import java.util.Set;
//
//public class redisConn {
//    public static void main(String[] args) {
//        JedisPoolConfig poolConfig = new JedisPoolConfig();
//        // 最大连接数
//        poolConfig.setMaxTotal(1);
//        // 最大空闲数
//        poolConfig.setMaxIdle(1);
//        // 最大允许等待时间，如果超过这个时间还未获取到连接，则会报JedisException异常：
//        // Could not get a resource from the pool
//        poolConfig.setMaxWaitMillis(1000);
//        Set<HostAndPort> nodes = new LinkedHashSet<HostAndPort>();
//        nodes.add(new HostAndPort("172.22.38.130", 7000));
//        nodes.add(new HostAndPort("172.22.38.130", 7001));
//        nodes.add(new HostAndPort("172.22.38.130", 7002));
//        nodes.add(new HostAndPort("172.22.38.130", 7003));
//        nodes.add(new HostAndPort("172.22.38.130", 7004));
//        nodes.add(new HostAndPort("172.22.38.130", 7005));
//        JedisCluster cluster = new JedisCluster(nodes, poolConfig);
//        String name = cluster.get("name");
//        System.out.println(name);
//        cluster.set("age", "18");
//        System.out.println(cluster.get("h"));
//        try {
//            cluster.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}
