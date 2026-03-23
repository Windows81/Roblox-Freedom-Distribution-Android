.class public Lcom/roblox/client/pushnotification/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/pushnotification/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "revokedNotificationType"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->b:Ljava/lang/String;

    const-string v0, "revokedNotificationId"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 1

    .line 45
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/h;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->a:Ljava/lang/String;

    .line 47
    check-cast p1, Lcom/roblox/client/pushnotification/b/h;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/h;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->c:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/h;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/h;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/h;->c:Ljava/lang/String;

    return-object v0
.end method
