.class Lcom/roblox/client/hybrid/a$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a;

.field private b:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/roblox/client/hybrid/a;Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/roblox/client/hybrid/a$a;->a:Lcom/roblox/client/hybrid/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/roblox/client/hybrid/a$a;->b:Landroid/webkit/WebViewClient;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/roblox/client/hybrid/a$a;->a:Lcom/roblox/client/hybrid/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/hybrid/a;->a(Lcom/roblox/client/hybrid/a;Z)Z

    .line 108
    iget-object v0, p0, Lcom/roblox/client/hybrid/a$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/hybrid/a$a;->a:Lcom/roblox/client/hybrid/a;

    invoke-static {p1}, Lcom/roblox/client/hybrid/a;->a(Lcom/roblox/client/hybrid/a;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/roblox/client/hybrid/a$a;->a:Lcom/roblox/client/hybrid/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/hybrid/a;->a(Lcom/roblox/client/hybrid/a;Z)Z

    .line 100
    iget-object v0, p0, Lcom/roblox/client/hybrid/a$a;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
