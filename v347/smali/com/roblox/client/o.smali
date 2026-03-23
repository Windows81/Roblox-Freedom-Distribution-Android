.class public Lcom/roblox/client/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/o$a;,
        Lcom/roblox/client/o$b;,
        Lcom/roblox/client/o$c;
    }
.end annotation


# static fields
.field private static d:Lcom/roblox/client/o;


# instance fields
.field private a:Lcom/roblox/client/o$c;

.field private b:J

.field private final c:Lcom/roblox/client/util/p$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/util/p$a;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    .line 48
    iput-object p1, p0, Lcom/roblox/client/o;->c:Lcom/roblox/client/util/p$a;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/o;)Lcom/roblox/client/o$c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    return-object v0
.end method

.method public static a()Lcom/roblox/client/o;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/roblox/client/o;->d:Lcom/roblox/client/o;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/roblox/client/o;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/roblox/client/o;->d:Lcom/roblox/client/o;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/roblox/client/o;

    new-instance v2, Lcom/roblox/client/util/p$b;

    invoke-direct {v2}, Lcom/roblox/client/util/p$b;-><init>()V

    invoke-direct {v0, v2}, Lcom/roblox/client/o;-><init>(Lcom/roblox/client/util/p$a;)V

    sput-object v0, Lcom/roblox/client/o;->d:Lcom/roblox/client/o;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/roblox/client/o;->d:Lcom/roblox/client/o;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "UpgradeAction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 108
    sget-object v0, Lcom/roblox/client/o$c;->d:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/roblox/client/o;->c:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/o;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "UpgradeCheckHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evaluateResponse: Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :sswitch_0
    :try_start_1
    const-string v2, "Required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "Recommended"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 102
    :pswitch_0
    sget-object v0, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    goto :goto_2

    .line 105
    :pswitch_1
    sget-object v0, Lcom/roblox/client/o$c;->b:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 100
    :sswitch_data_0
    .sparse-switch
        -0x46e179c5 -> :sswitch_1
        -0x13947041 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/o;Lcom/roblox/client/http/j;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/roblox/client/o;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/o$b;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    sget-object v1, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    if-eq v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/roblox/client/o;->c:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/o;->b:J

    sub-long/2addr v0, v2

    .line 60
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 61
    const-string v2, "UpgradeCheckHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip upgrade check because it was completed not long ago: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    invoke-interface {p1, v0}, Lcom/roblox/client/o$b;->b(Lcom/roblox/client/o$c;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget-object v0, Lcom/roblox/client/o$c;->a:Lcom/roblox/client/o$c;

    iput-object v0, p0, Lcom/roblox/client/o;->a:Lcom/roblox/client/o$c;

    .line 71
    invoke-static {}, Lcom/roblox/client/http/g;->a()Lcom/roblox/client/http/f;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->upgradeCheckUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/roblox/client/o$1;

    invoke-direct {v3, p0, p1}, Lcom/roblox/client/o$1;-><init>(Lcom/roblox/client/o;Lcom/roblox/client/o$b;)V

    .line 72
    invoke-interface {v0, v1, v2, v3}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/roblox/client/http/a/b;

    invoke-direct {v1}, Lcom/roblox/client/http/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/c;->a(Lcom/roblox/client/http/a/d;)V

    .line 88
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    goto :goto_0
.end method
