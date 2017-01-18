(function() {
    return {
        graphitePort: parseInt(process.env.GRAPHITE_PORT) || 2003,
        graphiteHost: process.env.GRAPHITE_HOST || "localhost",
        port: 8125,
        debug: process.env.DEBUG || false,
        dumpMessages: process.env.DEBUG || false,
        flushInterval: process.env.FLUSH || 10000,
        percentThreshold: process.env.PERCENTILE || [95, 99],
        repeater: process.env.REPEATER || [],
        graphite: {
            legacyNamespace: false
        }
    };
})()