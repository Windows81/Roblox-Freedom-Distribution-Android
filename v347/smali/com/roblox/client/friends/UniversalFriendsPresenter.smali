.class public Lcom/roblox/client/friends/UniversalFriendsPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/f;
.implements Lcom/roblox/client/friends/c$a;


# instance fields
.field a:Lcom/roblox/client/friends/c$b;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/d;Lcom/roblox/client/friends/c$b;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/d;->a(Landroid/arch/lifecycle/f;)V

    .line 20
    iput-object p2, p0, Lcom/roblox/client/friends/UniversalFriendsPresenter;->a:Lcom/roblox/client/friends/c$b;

    .line 21
    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/m;
        a = .enum Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;
    .end annotation

    .prologue
    .line 42
    const-string v0, "UniversalPresenter"

    const-string v1, "LifecycleEvent.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method onResume()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/m;
        a = .enum Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;
    .end annotation

    .prologue
    .line 32
    const-string v0, "UniversalPresenter"

    const-string v1, "LifecycleEvent.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/m;
        a = .enum Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;
    .end annotation

    .prologue
    .line 27
    const-string v0, "UniversalPresenter"

    const-string v1, "LifecycleEvent.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method onStop()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/m;
        a = .enum Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;
    .end annotation

    .prologue
    .line 37
    const-string v0, "UniversalPresenter"

    const-string v1, "LifecycleEvent.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
