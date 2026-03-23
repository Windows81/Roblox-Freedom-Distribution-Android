.class public Lcom/roblox/client/app/AppInputFocusLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.datamodel"

    .line 13
    iput-object v0, p0, Lcom/roblox/client/app/AppInputFocusLifecycleObserver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMenuOptionActivated()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "rbx.datamodel"

    const-string v1, "onMenuOptionActivated"

    .line 17
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lcom/roblox/engine/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/engine/b/a;-><init>(Z)V

    .line 19
    iget-object v1, v0, Lcom/roblox/engine/b/a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/engine/b/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/roblox/engine/b/a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMenuOptionClosed()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "rbx.datamodel"

    const-string v1, "onMenuOptionClosed"

    .line 25
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/roblox/engine/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/roblox/engine/b/a;-><init>(Z)V

    .line 27
    iget-object v1, v0, Lcom/roblox/engine/b/a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/engine/b/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/roblox/engine/b/a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
