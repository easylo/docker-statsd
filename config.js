 {
    graphitePort: parseInt(process.env.GRAPHITE_PORT) || 2003,
    graphiteHost: process.env.GRAPHITE_HOST || "localhost",
    port:  parseInt(process.env.STATSD_PORT) || 8125,
    debug: process.env.DEBUG || false,
    dumpMessages: process.env.DEBUG || false,
    flushInterval: process.env.FLUSH || 10000,
    percentThreshold: process.env.PERCENTILE || [95, 99],
    repeater: process.env.REPEATER || [],
    backends: process.env.BACKENDS || ["./backends/graphite"],
    graphite: {
        legacyNamespace: false
    }
}
