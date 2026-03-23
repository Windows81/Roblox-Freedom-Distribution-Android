.class public Lio/chirp/connect/ConnectSDKDelegator;
.super Ljava/lang/Object;


# instance fields
.field private accountEnabled:Z

.field private analytics:Lio/chirp/connect/analytics/Analytics;

.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field audioBuffCallbackCopy:[B

.field private audioProcessingThread:Lio/chirp/connect/helpers/PriorityWorkerThread;

.field private callbackPtrIsSet:Z

.field private chirpAudio:Lio/chirp/a/c;

.field private chirpAudioBufferCallback:Lio/chirp/a/d;

.field private configString:Ljava/lang/String;

.field private connectAudioBufferCallback:Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;

.field private context:Landroid/content/Context;

.field private network:Lio/chirp/b/a;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/chirp/connect/interfaces/ConnectEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private sdk:Lchirpconnect/SDK;

.field private settingsContentObserver:Lio/chirp/connect/helpers/SettingsContentObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->observers:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->callbackPtrIsSet:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->accountEnabled:Z

    new-instance v0, Lio/chirp/connect/ConnectSDKDelegator$6;

    invoke-direct {v0, p0}, Lio/chirp/connect/ConnectSDKDelegator$6;-><init>(Lio/chirp/connect/ConnectSDKDelegator;)V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudioBufferCallback:Lio/chirp/a/d;

    iput-object p2, p0, Lio/chirp/connect/ConnectSDKDelegator;->appKey:Ljava/lang/String;

    iput-object p3, p0, Lio/chirp/connect/ConnectSDKDelegator;->appSecret:Ljava/lang/String;

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lio/chirp/connect/ConnectSDKDelegator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->accountEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lio/chirp/connect/ConnectSDKDelegator;)V
    .locals 0

    invoke-direct {p0}, Lio/chirp/connect/ConnectSDKDelegator;->createAndSendAnalytics()V

    return-void
.end method

.method static synthetic access$1000(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/connect/helpers/SettingsContentObserver;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->settingsContentObserver:Lio/chirp/connect/helpers/SettingsContentObserver;

    return-object p0
.end method

.method static synthetic access$1002(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/helpers/SettingsContentObserver;)Lio/chirp/connect/helpers/SettingsContentObserver;
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->settingsContentObserver:Lio/chirp/connect/helpers/SettingsContentObserver;

    return-object p1
.end method

.method static synthetic access$1100(Lio/chirp/connect/ConnectSDKDelegator;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->connectAudioBufferCallback:Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;

    return-object p0
.end method

.method static synthetic access$200(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->observers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/connect/analytics/Analytics;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->analytics:Lio/chirp/connect/analytics/Analytics;

    return-object p0
.end method

.method static synthetic access$400(Lio/chirp/connect/ConnectSDKDelegator;)Lchirpconnect/SDK;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    return-object p0
.end method

.method static synthetic access$500(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lio/chirp/connect/ConnectSDKDelegator;)Lio/chirp/b/a;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->network:Lio/chirp/b/a;

    return-object p0
.end method

.method static synthetic access$800(Lio/chirp/connect/ConnectSDKDelegator;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/chirp/connect/ConnectSDKDelegator;->configString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lio/chirp/connect/ConnectSDKDelegator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->configString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lio/chirp/connect/ConnectSDKDelegator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->parseConfigJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private auth(Lio/chirp/connect/interfaces/ConnectAuthListener;)V
    .locals 2

    new-instance v0, Lio/chirp/b/a;

    invoke-direct {v0}, Lio/chirp/b/a;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->network:Lio/chirp/b/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/chirp/connect/ConnectSDKDelegator$3;

    invoke-direct {v1, p0, p1}, Lio/chirp/connect/ConnectSDKDelegator$3;-><init>(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/interfaces/ConnectAuthListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createAndSendAnalytics()V
    .locals 9

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->network:Lio/chirp/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lio/chirp/b/a;

    invoke-direct {v0}, Lio/chirp/b/a;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->network:Lio/chirp/b/a;

    :cond_0
    :try_start_0
    new-instance v0, Lio/chirp/connect/analytics/Analytics;

    iget-object v2, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    const-string v3, "3.5.1"

    iget-object v4, p0, Lio/chirp/connect/ConnectSDKDelegator;->appKey:Ljava/lang/String;

    iget-object v5, p0, Lio/chirp/connect/ConnectSDKDelegator;->appSecret:Ljava/lang/String;

    iget-object v6, p0, Lio/chirp/connect/ConnectSDKDelegator;->network:Lio/chirp/b/a;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v1}, Lchirpconnect/SDK;->getProtocolName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v1}, Lchirpconnect/SDK;->getProtocolVersion()B

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/chirp/connect/analytics/Analytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/chirp/b/a;Ljava/lang/String;I)V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->analytics:Lio/chirp/connect/analytics/Analytics;

    invoke-virtual {v0}, Lio/chirp/connect/analytics/Analytics;->postInstantiate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private fetchConfigFromNetwork(Lio/chirp/connect/interfaces/ConnectGetConfigListener;)V
    .locals 2

    new-instance v0, Lio/chirp/b/a;

    invoke-direct {v0}, Lio/chirp/b/a;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->network:Lio/chirp/b/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/chirp/connect/ConnectSDKDelegator$4;

    invoke-direct {v1, p0, p0, p1}, Lio/chirp/connect/ConnectSDKDelegator$4;-><init>(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/interfaces/ConnectGetConfigListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chirp Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3.5.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lchirpconnect/Chirpconnect;->getVersion()Lchirpconnect/SDKVersion;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKVersion;->getConnect()Lchirpconnect/SDKPackage;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKPackage;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lchirpconnect/Chirpconnect;->getVersion()Lchirpconnect/SDKVersion;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKVersion;->getConnect()Lchirpconnect/SDKPackage;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKPackage;->getBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVolumeTooLow()Z
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseConfigJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCallbackPtr()Lio/chirp/connect/models/ChirpError;
    .locals 3

    iget-boolean v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->callbackPtrIsSet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0}, Lchirpconnect/SDK;->setCallbackPtr()Lchirpconnect/SDKError;

    move-result-object v0

    invoke-virtual {v0}, Lchirpconnect/SDKError;->errorCode()S

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {v1, v0}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->callbackPtrIsSet:Z

    :cond_1
    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_OK:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "No error."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/chirp/connect/ConnectSDKDelegator;->stopListening()Lio/chirp/connect/models/ChirpError;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudioBufferCallback:Lio/chirp/a/d;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/chirp/a/c;->d()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    :cond_0
    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->audioProcessingThread:Lio/chirp/connect/helpers/PriorityWorkerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/chirp/connect/helpers/PriorityWorkerThread;->interrupt()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->audioProcessingThread:Lio/chirp/connect/helpers/PriorityWorkerThread;

    :cond_1
    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->settingsContentObserver:Lio/chirp/connect/helpers/SettingsContentObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lio/chirp/connect/ConnectSDKDelegator;->settingsContentObserver:Lio/chirp/connect/helpers/SettingsContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v1}, Lchirpconnect/SDK;->delete()Lchirpconnect/SDKError;

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    :cond_3
    return-void
.end method

.method public enableLogs()V
    .locals 0

    invoke-static {}, Lio/chirp/connect/helpers/LogManager;->enableLogs()V

    return-void
.end method

.method public getChannelCount()B
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchirpconnect/SDK;->getChannelCount()B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDurationForPayloadLength(J)F
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lchirpconnect/SDK;->getDuration(J)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchirpconnect/SDK;->getInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxPayloadLength()J
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchirpconnect/SDK;->getMaxPayloadLength()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getState()B
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStateForChannel(B)B
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->getChannelState(B)B

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTransmissionChannel()B
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchirpconnect/SDK;->getTransmissionChannel()B

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->appKey:Ljava/lang/String;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lchirpconnect/Chirpconnect;->newSDK(Ljava/lang/String;Ljava/lang/String;)Lchirpconnect/SDK;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    return-void
.end method

.method public isValidPayload([B)Z
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->isValid([B)Lchirpconnect/SDKError;

    move-result-object p1

    invoke-virtual {p1}, Lchirpconnect/SDKError;->errorCode()S

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public payloadToHexString([B)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->asString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public randomPayload(J)[B
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lchirpconnect/SDK;->randomPayload(J)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public send([B)Lio/chirp/connect/models/ChirpError;
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_STARTED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t started."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lio/chirp/connect/ConnectSDKDelegator;->isVolumeTooLow()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_INVALID_VOLUME:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect volume to low."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance v0, Lio/chirp/connect/models/ChirpError;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v1, p1}, Lchirpconnect/SDK;->send([B)Lchirpconnect/SDKError;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object v0
.end method

.method public setConfig(Ljava/lang/String;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t been initialised."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lio/chirp/connect/ConnectSDKDelegator;->setCallbackPtr()Lio/chirp/connect/models/ChirpError;

    move-result-object v0

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p2, v0}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    :cond_1
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->setConfig(Ljava/lang/String;)Lchirpconnect/SDKError;

    move-result-object v0

    invoke-virtual {v0}, Lchirpconnect/SDKError;->errorCode()S

    move-result v1

    if-lez v1, :cond_2

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {p1, v0}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    invoke-interface {p2, p1}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void

    :cond_2
    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->configString:Ljava/lang/String;

    iget-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {p1}, Lchirpconnect/SDK;->isOfflineMode()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lio/chirp/connect/ConnectSDKDelegator$2;

    invoke-direct {p1, p0, p2}, Lio/chirp/connect/ConnectSDKDelegator$2;-><init>(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V

    invoke-direct {p0, p1}, Lio/chirp/connect/ConnectSDKDelegator;->auth(Lio/chirp/connect/interfaces/ConnectAuthListener;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->accountEnabled:Z

    new-instance p1, Lio/chirp/connect/scenario/CallbackSetScenario;

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->observers:Ljava/util/List;

    invoke-direct {p1, v0}, Lio/chirp/connect/scenario/CallbackSetScenario;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->setCallbacks(Lchirpconnect/CallbackSet;)Lchirpconnect/SDKError;

    move-result-object p1

    invoke-virtual {p1}, Lchirpconnect/SDKError;->errorCode()S

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    invoke-direct {v0, p1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    invoke-interface {p2, v0}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onError(Lio/chirp/connect/models/ChirpError;)V

    return-void

    :cond_4
    invoke-interface {p2}, Lio/chirp/connect/interfaces/ConnectSetConfigListener;->onSuccess()V

    :goto_0
    invoke-virtual {p0}, Lio/chirp/connect/ConnectSDKDelegator;->setSettingsContentObserver()V

    return-void
.end method

.method public setConfigFromNetwork(Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V
    .locals 1

    new-instance v0, Lio/chirp/connect/ConnectSDKDelegator$1;

    invoke-direct {v0, p0, p1}, Lio/chirp/connect/ConnectSDKDelegator$1;-><init>(Lio/chirp/connect/ConnectSDKDelegator;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V

    invoke-direct {p0, v0}, Lio/chirp/connect/ConnectSDKDelegator;->fetchConfigFromNetwork(Lio/chirp/connect/interfaces/ConnectGetConfigListener;)V

    return-void
.end method

.method public setConnectAudioBufferCallback(Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/connect/ConnectSDKDelegator;->connectAudioBufferCallback:Lio/chirp/connect/interfaces/ConnectAudioBufferCallback;

    return-void
.end method

.method public setListenToSelf(Z)Lio/chirp/connect/models/ChirpError;
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->setAutoMute(Z)Lchirpconnect/SDKError;

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_OK:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "No error."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1
.end method

.method public setListener(Lio/chirp/connect/interfaces/ConnectEventListener;)V
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRandomSeed(I)Lio/chirp/connect/models/ChirpError;
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->setRandomSeed(I)Lchirpconnect/SDKError;

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_OK:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "No error."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1
.end method

.method public setSettingsContentObserver()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/chirp/connect/ConnectSDKDelegator$5;

    invoke-direct {v1, p0}, Lio/chirp/connect/ConnectSDKDelegator$5;-><init>(Lio/chirp/connect/ConnectSDKDelegator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setTransmissionChannel(B)Lio/chirp/connect/models/ChirpError;
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v1, Lio/chirp/connect/models/ChirpError;

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->setTransmissionChannel(B)Lchirpconnect/SDKError;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object v1
.end method

.method public setVolume(F)Lio/chirp/connect/models/ChirpError;
    .locals 3

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    sget-object v0, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v1, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {p1, v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const v1, 0x3f0ff594

    new-instance v2, Lio/chirp/connect/models/ChirpError;

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->setVolume(F)Lchirpconnect/SDKError;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object v2
.end method

.method public startListening()Lio/chirp/connect/models/ChirpError;
    .locals 4

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result v0

    invoke-static {v0}, Lio/chirp/connect/models/ConnectState;->createConnectState(B)Lio/chirp/connect/models/ConnectState;

    move-result-object v0

    sget-object v1, Lio/chirp/connect/models/ConnectState;->ConnectNotCreated:Lio/chirp/connect/models/ConnectState;

    if-ne v0, v1, :cond_1

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_MISSING_CONFIG:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "ChirpConnect config hasn\'t been set."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->accountEnabled:Z

    if-nez v0, :cond_2

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_ACCOUNT_DISABLED:Lio/chirp/connect/models/ChirpErrorCode;

    invoke-virtual {v1}, Lio/chirp/connect/models/ChirpErrorCode;->getCode()I

    move-result v1

    const-string v2, "Your account has been disabled due to an unpaid license. Please contact sales@chirp.io."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    if-nez v0, :cond_4

    new-instance v0, Lio/chirp/connect/helpers/PriorityWorkerThread;

    invoke-direct {v0}, Lio/chirp/connect/helpers/PriorityWorkerThread;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->audioProcessingThread:Lio/chirp/connect/helpers/PriorityWorkerThread;

    invoke-virtual {v0}, Lio/chirp/connect/helpers/PriorityWorkerThread;->start()V

    new-instance v0, Lio/chirp/a/c;

    invoke-direct {v0}, Lio/chirp/a/c;-><init>()V

    iput-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/chirp/connect/ConnectSDKDelegator;->audioProcessingThread:Lio/chirp/connect/helpers/PriorityWorkerThread;

    iget-object v2, v2, Lio/chirp/connect/helpers/PriorityWorkerThread;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/chirp/a/c;->a(Landroid/content/Context;Landroid/os/Handler;Z)Lio/chirp/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/chirp/a/e;->a()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    new-instance v1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {v1, v0}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/a/e;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudioBufferCallback:Lio/chirp/a/d;

    invoke-virtual {v0, v1}, Lio/chirp/a/c;->a(Lio/chirp/a/d;)V

    :cond_4
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    invoke-virtual {v1}, Lio/chirp/a/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lchirpconnect/SDK;->setSampleRate(I)Lchirpconnect/SDKError;

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0}, Lchirpconnect/SDK;->start()Lchirpconnect/SDKError;

    move-result-object v0

    invoke-virtual {v0}, Lchirpconnect/SDKError;->errorCode()S

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {v1, v0}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object v1

    :cond_5
    new-instance v0, Lio/chirp/connect/models/ChirpError;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    invoke-virtual {v1}, Lio/chirp/a/c;->a()Lio/chirp/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/a/e;)V

    return-object v0
.end method

.method public stopListening()Lio/chirp/connect/models/ChirpError;
    .locals 3

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    if-nez v0, :cond_0

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_INITIALISED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "ChirpConnect hasn\'t been instantiated."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_STARTED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "ChirpConnect has already stopped."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_NOT_STARTED:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "ChirpConnect has not been instantiated yet."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->chirpAudio:Lio/chirp/a/c;

    invoke-virtual {v0}, Lio/chirp/a/c;->b()Lio/chirp/a/e;

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->sdk:Lchirpconnect/SDK;

    invoke-virtual {v0}, Lchirpconnect/SDK;->stop()Lchirpconnect/SDKError;

    new-instance v0, Lio/chirp/connect/models/ChirpError;

    sget-object v1, Lio/chirp/connect/models/ChirpErrorCode;->CHIRP_CONNECT_OK:Lio/chirp/connect/models/ChirpErrorCode;

    const-string v2, "No error."

    invoke-direct {v0, v1, v2}, Lio/chirp/connect/models/ChirpError;-><init>(Lio/chirp/connect/models/ChirpErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeWav([BLjava/lang/String;)Lio/chirp/connect/models/ChirpError;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "chirp_connect"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lio/chirp/connect/ConnectSDKDelegator;->writeWav([BLjava/lang/String;Ljava/io/File;)Lio/chirp/connect/models/ChirpError;

    move-result-object p1

    return-object p1
.end method

.method public writeWav([BLjava/lang/String;Ljava/io/File;)Lio/chirp/connect/models/ChirpError;
    .locals 7

    iget-object v0, p0, Lio/chirp/connect/ConnectSDKDelegator;->appKey:Ljava/lang/String;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lchirpconnect/Chirpconnect;->newSDK(Ljava/lang/String;Ljava/lang/String;)Lchirpconnect/SDK;

    move-result-object v0

    invoke-virtual {v0}, Lchirpconnect/SDK;->setCallbackPtr()Lchirpconnect/SDKError;

    iget-object v1, p0, Lio/chirp/connect/ConnectSDKDelegator;->configString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lchirpconnect/SDK;->setConfig(Ljava/lang/String;)Lchirpconnect/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKError;->errorCode()S

    move-result v2

    if-lez v2, :cond_0

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {p1, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object p1

    :cond_0
    new-instance v1, Lio/chirp/connect/scenario/CallbackSetScenario;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lio/chirp/connect/ConnectSDKDelegator;->analytics:Lio/chirp/connect/analytics/Analytics;

    invoke-direct {v1, v2, v3}, Lio/chirp/connect/scenario/CallbackSetScenario;-><init>(Ljava/util/List;Lio/chirp/connect/analytics/Analytics;)V

    invoke-virtual {v0, v1}, Lchirpconnect/SDK;->setCallbacks(Lchirpconnect/CallbackSet;)Lchirpconnect/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKError;->errorCode()S

    move-result v2

    if-lez v2, :cond_1

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {p1, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lchirpconnect/SDK;->start()Lchirpconnect/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKError;->errorCode()S

    move-result v2

    if-lez v2, :cond_2

    new-instance p1, Lio/chirp/connect/models/ChirpError;

    invoke-direct {p1, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object p1

    :cond_2
    new-instance v2, Lio/chirp/connect/models/ChirpError;

    const/4 v3, 0x0

    const-string v4, "No error."

    invoke-direct {v2, v3, v4}, Lio/chirp/connect/models/ChirpError;-><init>(ILjava/lang/String;)V

    const v3, 0xac44

    invoke-virtual {v0, v3}, Lchirpconnect/SDK;->setSampleRate(I)Lchirpconnect/SDKError;

    :try_start_0
    new-instance v4, Lio/chirp/connect/helpers/WavAudioRecorder;

    iget-object v5, p0, Lio/chirp/connect/ConnectSDKDelegator;->context:Landroid/content/Context;

    invoke-direct {v4, v5, p2, p3}, Lio/chirp/connect/helpers/WavAudioRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    const-string p2, "ChirpAudioManager recording data"

    invoke-static {p2}, Lio/chirp/connect/helpers/LogManager;->writeLog(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lchirpconnect/SDK;->send([B)Lchirpconnect/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKError;->errorCode()S

    move-result p2

    if-gtz p2, :cond_5

    const-wide/16 p2, 0x1000

    long-to-int p3, p2

    mul-int/lit8 p3, p3, 0x2

    new-array p2, p3, [B

    array-length p1, p1

    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Lchirpconnect/SDK;->getDuration(J)F

    move-result p1

    invoke-virtual {v4, v3, p1}, Lio/chirp/connect/helpers/WavAudioRecorder;->createWav(IF)V

    :goto_0
    invoke-virtual {v0}, Lchirpconnect/SDK;->getState()B

    move-result p1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    invoke-virtual {v0, p2}, Lchirpconnect/SDK;->processShortsOutput([B)Lchirpconnect/SDKError;

    move-result-object v1

    invoke-virtual {v1}, Lchirpconnect/SDKError;->errorCode()S

    move-result p1

    if-gtz p1, :cond_3

    invoke-virtual {v4, p2}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeWav([B)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {v4}, Lio/chirp/connect/helpers/WavAudioRecorder;->closeWav()V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {v1}, Lchirpconnect/SDKError;->errorCode()S

    move-result p2

    new-instance v2, Lio/chirp/connect/models/ChirpError;

    if-lez p2, :cond_6

    invoke-direct {v2, v1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    goto :goto_1

    :cond_6
    const/16 p2, 0x78

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to save the file. "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p2, p1}, Lio/chirp/connect/models/ChirpError;-><init>(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lchirpconnect/SDK;->stop()Lchirpconnect/SDKError;

    move-result-object p1

    invoke-virtual {p1}, Lchirpconnect/SDKError;->errorCode()S

    move-result p2

    if-lez p2, :cond_7

    new-instance p2, Lio/chirp/connect/models/ChirpError;

    invoke-direct {p2, p1}, Lio/chirp/connect/models/ChirpError;-><init>(Lchirpconnect/SDKError;)V

    return-object p2

    :cond_7
    return-object v2
.end method
