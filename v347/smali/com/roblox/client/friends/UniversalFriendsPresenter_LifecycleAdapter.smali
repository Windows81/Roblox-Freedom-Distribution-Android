.class public Lcom/roblox/client/friends/UniversalFriendsPresenter_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/c;


# instance fields
.field final a:Lcom/roblox/client/friends/UniversalFriendsPresenter;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/UniversalFriendsPresenter;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/client/friends/UniversalFriendsPresenter_LifecycleAdapter;->a:Lcom/roblox/client/friends/UniversalFriendsPresenter;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/g;Landroid/arch/lifecycle/d$a;ZLandroid/arch/lifecycle/k;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 19
    if-eqz p4, :cond_1

    move v0, v1

    .line 20
    :goto_0
    if-eqz p3, :cond_2

    .line 47
    :cond_0
    :goto_1
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :cond_2
    sget-object v2, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    if-ne p2, v2, :cond_4

    .line 24
    if-eqz v0, :cond_3

    const-string v0, "onStart"

    invoke-virtual {p4, v0, v1}, Landroid/arch/lifecycle/k;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/friends/UniversalFriendsPresenter_LifecycleAdapter;->a:Lcom/roblox/client/friends/UniversalFriendsPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->onStart()V

    goto :goto_1

    .line 29
    :cond_4
    sget-object v2, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    if-ne p2, v2, :cond_6

    .line 30
    if-eqz v0, :cond_5

    const-string v0, "onResume"

    invoke-virtual {p4, v0, v1}, Landroid/arch/lifecycle/k;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/friends/UniversalFriendsPresenter_LifecycleAdapter;->a:Lcom/roblox/client/friends/UniversalFriendsPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->onResume()V

    goto :goto_1

    .line 35
    :cond_6
    sget-object v2, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    if-ne p2, v2, :cond_8

    .line 36
    if-eqz v0, :cond_7

    const-string v0, "onStop"

    invoke-virtual {p4, v0, v1}, Landroid/arch/lifecycle/k;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/roblox/client/friends/UniversalFriendsPresenter_LifecycleAdapter;->a:Lcom/roblox/client/friends/UniversalFriendsPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->onStop()V

    goto :goto_1

    .line 41
    :cond_8
    sget-object v2, Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;

    if-ne p2, v2, :cond_0

    .line 42
    if-eqz v0, :cond_9

    const-string v0, "onDestroy"

    invoke-virtual {p4, v0, v1}, Landroid/arch/lifecycle/k;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/roblox/client/friends/UniversalFriendsPresenter_LifecycleAdapter;->a:Lcom/roblox/client/friends/UniversalFriendsPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->onDestroy()V

    goto :goto_1
.end method
