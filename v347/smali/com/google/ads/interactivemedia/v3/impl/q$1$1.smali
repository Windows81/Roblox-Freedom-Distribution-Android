.class Lcom/google/ads/interactivemedia/v3/impl/q$1$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/q$1;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/q$1;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/q$1;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/q$1$1;->a:Lcom/google/ads/interactivemedia/v3/impl/q$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/q$1$1;->a:Lcom/google/ads/interactivemedia/v3/impl/q$1;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/q$1;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/x;->d(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
