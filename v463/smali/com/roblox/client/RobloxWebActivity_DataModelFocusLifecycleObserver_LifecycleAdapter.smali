.class public Lcom/roblox/client/RobloxWebActivity_DataModelFocusLifecycleObserver_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;


# instance fields
.field final a:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;


# direct methods
.method constructor <init>(Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/RobloxWebActivity_DataModelFocusLifecycleObserver_LifecycleAdapter;->a:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/j;Landroidx/lifecycle/g$a;ZLandroidx/lifecycle/o;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 24
    :cond_1
    sget-object p3, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    if-ne p2, p3, :cond_4

    if-eqz v0, :cond_2

    const-string p2, "onFragmentCreated"

    .line 25
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/o;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/RobloxWebActivity_DataModelFocusLifecycleObserver_LifecycleAdapter;->a:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;

    invoke-virtual {p1}, Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;->onFragmentCreated()V

    :cond_3
    return-void

    .line 30
    :cond_4
    sget-object p3, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    if-ne p2, p3, :cond_6

    if-eqz v0, :cond_5

    const-string p2, "onFragmentDestroyed"

    .line 31
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/o;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/roblox/client/RobloxWebActivity_DataModelFocusLifecycleObserver_LifecycleAdapter;->a:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;

    invoke-virtual {p1}, Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;->onFragmentDestroyed()V

    :cond_6
    return-void
.end method
