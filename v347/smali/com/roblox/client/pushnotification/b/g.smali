.class public Lcom/roblox/client/pushnotification/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/pushnotification/b/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    const-string v1, "category"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/g;->d:Ljava/lang/String;

    .line 33
    const-string v1, "revokedNotificationType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/g;->b:Ljava/lang/String;

    .line 34
    const-string v1, "revokeUpToDate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 1

    .prologue
    .line 49
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/g;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->a:Ljava/lang/String;

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/roblox/client/pushnotification/b/g;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->b:Ljava/lang/String;

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/roblox/client/pushnotification/b/g;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    .line 53
    check-cast p1, Lcom/roblox/client/pushnotification/b/g;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->d:Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/util/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->d:Ljava/lang/String;

    return-object v0
.end method
