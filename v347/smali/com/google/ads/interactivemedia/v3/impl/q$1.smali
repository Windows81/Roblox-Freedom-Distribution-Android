.class Lcom/google/ads/interactivemedia/v3/impl/q$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/q;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/impl/x;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/impl/q;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/q;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/x;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/q$1;->c:Lcom/google/ads/interactivemedia/v3/impl/q;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/q$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/q$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 32
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/q$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 33
    invoke-virtual {v0}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/q$1$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/q$1$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/q$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
