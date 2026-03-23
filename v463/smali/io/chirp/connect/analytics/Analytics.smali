.class public Lio/chirp/connect/analytics/Analytics;
.super Ljava/lang/Object;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private clientID:Lio/chirp/connect/analytics/ClientID;

.field private genericPostData:Lorg/json/JSONObject;

.field private network:Lio/chirp/b/a;

.field private protocolName:Ljava/lang/String;

.field private protocolVersion:I

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/chirp/b/a;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/chirp/connect/analytics/ClientID;

    invoke-direct {v0, p1}, Lio/chirp/connect/analytics/ClientID;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/chirp/connect/analytics/Analytics;->clientID:Lio/chirp/connect/analytics/ClientID;

    iput-object p5, p0, Lio/chirp/connect/analytics/Analytics;->network:Lio/chirp/b/a;

    iput-object p3, p0, Lio/chirp/connect/analytics/Analytics;->appKey:Ljava/lang/String;

    iput-object p4, p0, Lio/chirp/connect/analytics/Analytics;->appSecret:Ljava/lang/String;

    iput-object p2, p0, Lio/chirp/connect/analytics/Analytics;->sdkVersion:Ljava/lang/String;

    iput-object p6, p0, Lio/chirp/connect/analytics/Analytics;->protocolName:Ljava/lang/String;

    iput p7, p0, Lio/chirp/connect/analytics/Analytics;->protocolVersion:I

    invoke-direct {p0}, Lio/chirp/connect/analytics/Analytics;->buildGenericPostData()V

    return-void
.end method

.method static synthetic access$000(Lio/chirp/connect/analytics/Analytics;)Lio/chirp/b/a;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/analytics/Analytics;->network:Lio/chirp/b/a;

    return-object p0
.end method

.method private buildGenericPostData()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/chirp/connect/analytics/Analytics;->clientID:Lio/chirp/connect/analytics/ClientID;

    invoke-virtual {v1}, Lio/chirp/connect/analytics/ClientID;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    invoke-static {}, Lio/chirp/connect/analytics/TimestampUtils;->getISO8601StringForCurrentDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/chirp/connect/analytics/Analytics;->sdkVersion:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private postAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lio/chirp/connect/analytics/Analytics$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/chirp/connect/analytics/Analytics$1;-><init>(Lio/chirp/connect/analytics/Analytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public postInstantiate()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-static {}, Lio/chirp/connect/analytics/TimestampUtils;->getISO8601StringForCurrentDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lio/chirp/connect/analytics/Analytics;->appKey:Ljava/lang/String;

    iget-object v5, p0, Lio/chirp/connect/analytics/Analytics;->appSecret:Ljava/lang/String;

    const-string v6, "connect"

    const-string v7, "instantiate"

    iget-object v0, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/chirp/connect/analytics/Analytics;->postAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public postReceived(I)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "payload_length"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "protocol_name"

    iget-object v1, p0, Lio/chirp/connect/analytics/Analytics;->protocolName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "protocol_version"

    iget v1, p0, Lio/chirp/connect/analytics/Analytics;->protocolVersion:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-static {}, Lio/chirp/connect/analytics/TimestampUtils;->getISO8601StringForCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lio/chirp/connect/analytics/Analytics;->appKey:Ljava/lang/String;

    iget-object v4, p0, Lio/chirp/connect/analytics/Analytics;->appSecret:Ljava/lang/String;

    const-string v5, "connect"

    const-string v6, "receive"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/chirp/connect/analytics/Analytics;->postAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public postSent(I)V
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lio/chirp/connect/analytics/Analytics;->genericPostData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "payload_length"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "protocol_name"

    iget-object v1, p0, Lio/chirp/connect/analytics/Analytics;->protocolName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "protocol_version"

    iget v1, p0, Lio/chirp/connect/analytics/Analytics;->protocolVersion:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-static {}, Lio/chirp/connect/analytics/TimestampUtils;->getISO8601StringForCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lio/chirp/connect/analytics/Analytics;->appKey:Ljava/lang/String;

    iget-object v4, p0, Lio/chirp/connect/analytics/Analytics;->appSecret:Ljava/lang/String;

    const-string v5, "connect"

    const-string v6, "send"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/chirp/connect/analytics/Analytics;->postAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
