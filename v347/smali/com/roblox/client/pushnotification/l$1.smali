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

    .prologue
    .line 131
    iput-object p1, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 134
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/n;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    invoke-static {v0, p2}, Lcom/roblox/client/pushnotification/l;->a(Lcom/roblox/client/pushnotification/l;Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/n;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v2}, Lcom/roblox/client/pushnotification/q;-><init>()V

    iget-object v3, p0, Lcom/roblox/client/pushnotification/l$1;->a:Lcom/roblox/client/pushnotification/l;

    .line 136
    invoke-static {v3, p2}, Lcom/roblox/client/pushnotification/l;->a(Lcom/roblox/client/pushnotification/l;Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v3

    invoke-interface {v3}, Lcom/roblox/client/pushnotification/m;->c()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method
