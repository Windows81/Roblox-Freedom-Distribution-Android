.class Lcom/roblox/client/v$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/v$c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/v$c;


# direct methods
.method constructor <init>(Lcom/roblox/client/v$c;Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/roblox/client/v$c$1;->b:Lcom/roblox/client/v$c;

    iput-object p2, p0, Lcom/roblox/client/v$c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .line 269
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const-string v1, "LoginWebView"

    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    .line 271
    iget-object p1, p0, Lcom/roblox/client/v$c$1;->a:Ljava/lang/String;

    const-string v0, "SessionExpired_401"

    invoke-static {v1, v0, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 274
    iget-object p1, p0, Lcom/roblox/client/v$c$1;->a:Ljava/lang/String;

    const-string v0, "SessionSuccess_200"

    invoke-static {v1, v0, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionUnknown_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/v$c$1;->a:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
