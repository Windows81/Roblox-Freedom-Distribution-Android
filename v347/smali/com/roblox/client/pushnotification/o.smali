.class public Lcom/roblox/client/pushnotification/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/pushnotification/o$a;,
        Lcom/roblox/client/pushnotification/o$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/roblox/client/pushnotification/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/o;->b:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/o;->c()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/pushnotification/o$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/o;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/pushnotification/o;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/roblox/client/pushnotification/o$b;->a:Lcom/roblox/client/pushnotification/o;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/roblox/client/pushnotification/o$a;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/pushnotification/o$a;-><init>(Lcom/roblox/client/pushnotification/o;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/i;

    return-object v0
.end method

.method public a(Ljava/lang/String;J)Lcom/roblox/client/pushnotification/i;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/roblox/client/pushnotification/b;

    invoke-direct {v1, p2, p3}, Lcom/roblox/client/pushnotification/b;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/i;

    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/i;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/o;->c()V

    .line 63
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    const-string v1, "FriendRequestReceived"

    new-instance v2, Lcom/roblox/client/pushnotification/f;

    invoke-direct {v2}, Lcom/roblox/client/pushnotification/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    const-string v1, "FriendRequestAccepted"

    new-instance v2, Lcom/roblox/client/pushnotification/e;

    invoke-direct {v2}, Lcom/roblox/client/pushnotification/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    const-string v1, "PrivateMessageReceived"

    new-instance v2, Lcom/roblox/client/pushnotification/k;

    invoke-direct {v2}, Lcom/roblox/client/pushnotification/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/roblox/client/pushnotification/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
