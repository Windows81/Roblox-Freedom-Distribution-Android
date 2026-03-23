.class Lcom/roblox/client/pushnotification/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/pushnotification/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/pushnotification/l;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/l;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/n;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    invoke-static {v0, p2}, Lcom/roblox/client/pushnotification/l;->a(Lcom/roblox/client/pushnotification/l;Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/n;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v1}, Lcom/roblox/client/pushnotification/q;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    .line 173
    invoke-static {v2, p2}, Lcom/roblox/client/pushnotification/l;->a(Lcom/roblox/client/pushnotification/l;Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/pushnotification/m;->c()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
