.class public Lcom/roblox/client/hybrid/a;
.super Lcom/roblox/client/hybrid/RBHybridWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a$a;
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/roblox/engine/jni/memstorage/Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/RBHybridWebView;-><init>(Landroid/content/Context;)V

    const-string p1, "rbx.browserservice"

    .line 19
    iput-object p1, p0, Lcom/roblox/client/hybrid/a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/roblox/client/hybrid/a;->e:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/roblox/client/hybrid/a;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/hybrid/a;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/roblox/client/hybrid/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/hybrid/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/roblox/client/hybrid/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/hybrid/a;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/roblox/client/hybrid/a;->f:Z

    return p1
.end method

.method private c()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/roblox/client/hybrid/a;->e:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    invoke-super {p0, v1}, Lcom/roblox/client/hybrid/RBHybridWebView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/hybrid/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/roblox/client/hybrid/a;->g:Lcom/roblox/engine/jni/memstorage/Connection;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/roblox/engine/jni/memstorage/Connection;->disconnect()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 126
    new-instance v0, Lcom/roblox/client/hybrid/a$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/hybrid/a$1;-><init>(Lcom/roblox/client/hybrid/a;)V

    const-string v1, "BrowserService.ExecuteJavaScript"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/memstorage/MemStorage;->bind(Ljava/lang/String;Lcom/roblox/engine/jni/memstorage/Callback;)Lcom/roblox/engine/jni/memstorage/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/hybrid/a;->g:Lcom/roblox/engine/jni/memstorage/Connection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "rbx.browserservice"

    const-string v1, "create -> bindBrowserService"

    .line 44
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/roblox/client/hybrid/a;->e()V

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BrowserService.JavaScriptCallback"

    .line 56
    invoke-static {v0, p1}, Lcom/roblox/engine/jni/memstorage/MemStorage;->fire(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "rbx.browserservice"

    const-string v1, "destroy -> unbindBrowserService"

    .line 50
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/roblox/client/hybrid/a;->d()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/roblox/client/hybrid/a;->f:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/hybrid/a;->e:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/hybrid/a;->e:Ljava/util/Vector;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/hybrid/a;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/roblox/client/hybrid/a$a;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/hybrid/a$a;-><init>(Lcom/roblox/client/hybrid/a;Landroid/webkit/WebViewClient;)V

    invoke-super {p0, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
