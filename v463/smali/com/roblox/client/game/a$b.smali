.class Lcom/roblox/client/game/a$b;
.super Lcom/roblox/client/game/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/a;

.field private b:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;


# direct methods
.method private constructor <init>(Lcom/roblox/client/game/a;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-direct {p0}, Lcom/roblox/client/game/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/game/a;Lcom/roblox/client/game/a$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lcom/roblox/client/game/a$b;-><init>(Lcom/roblox/client/game/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/game/o;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-static {v0}, Lcom/roblox/client/game/a;->g(Lcom/roblox/client/game/a;)Lcom/roblox/client/game/o;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 431
    iget-object p1, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-static {p1}, Lcom/roblox/client/game/a;->d(Lcom/roblox/client/game/a;)Lcom/roblox/engine/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-static {p1}, Lcom/roblox/client/game/a;->d(Lcom/roblox/client/game/a;)Lcom/roblox/engine/a/a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/roblox/engine/a/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 405
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-static {v0}, Lcom/roblox/client/game/a;->h(Lcom/roblox/client/game/a;)Lcom/roblox/client/purchase/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/roblox/client/purchase/b;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-static {p1}, Lcom/roblox/client/game/a;->i(Lcom/roblox/client/game/a;)Lcom/roblox/engine/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/roblox/engine/b;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-virtual {v0}, Lcom/roblox/client/game/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 423
    iget-object v0, p0, Lcom/roblox/client/game/a$b;->b:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    if-nez v0, :cond_0

    .line 424
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/game/a$a;

    iget-object v2, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/game/a$a;-><init>(Lcom/roblox/client/game/a;Lcom/roblox/client/game/a$1;)V

    new-instance v2, Lcom/roblox/client/game/a$c;

    iget-object v4, p0, Lcom/roblox/client/game/a$b;->a:Lcom/roblox/client/game/a;

    invoke-direct {v2, v4, v3}, Lcom/roblox/client/game/a$c;-><init>(Lcom/roblox/client/game/a;Lcom/roblox/client/game/a$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/l;->a(Lcom/roblox/client/game/d$a;Lcom/roblox/client/game/d$b;)Lcom/roblox/client/game/d;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/game/a$b;->b:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/a$b;->b:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
