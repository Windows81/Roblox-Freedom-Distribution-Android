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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "category"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->d:Ljava/lang/String;

    const-string v0, "revokedNotificationType"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->b:Ljava/lang/String;

    const-string v0, "revokeUpToDate"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 1

    .line 49
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/g;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->a:Ljava/lang/String;

    .line 51
    check-cast p1, Lcom/roblox/client/pushnotification/b/g;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/g;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/ae/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/g;->d:Ljava/lang/String;

    return-object v0
.end method
