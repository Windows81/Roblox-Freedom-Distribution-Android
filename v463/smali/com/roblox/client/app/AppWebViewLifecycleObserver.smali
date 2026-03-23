.class public Lcom/roblox/client/app/AppWebViewLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewCreated()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;
    .end annotation

    return-void
.end method

.method public onWebViewDestroyed()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "BrowserService.BrowserWindowClosed"

    const-string v1, ""

    .line 18
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/memstorage/MemStorage;->fire(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
