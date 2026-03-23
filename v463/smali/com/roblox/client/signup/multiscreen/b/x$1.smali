.class Lcom/roblox/client/signup/multiscreen/b/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/x;->c(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/a/a;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/x;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/x;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->b:Lcom/roblox/client/signup/multiscreen/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/x$1$1;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/signup/multiscreen/b/x$1$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/x$1;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->b:Lcom/roblox/client/signup/multiscreen/a/a;

    iget v3, v3, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    iget-object v4, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->b:Lcom/roblox/client/signup/multiscreen/a/a;

    iget v4, v4, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    iget-object v5, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->b:Lcom/roblox/client/signup/multiscreen/a/a;

    iget v5, v5, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    .line 176
    invoke-virtual {v2, v3, v4, v5}, Lcom/roblox/client/signup/multiscreen/b/x;->a(III)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    .line 179
    invoke-static {v3}, Lcom/roblox/client/signup/multiscreen/b/x;->c(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/http/f;

    move-result-object v3

    .line 180
    invoke-static {v0, v2}, Lcom/roblox/client/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 179
    invoke-interface {v3, v0, v2, v1}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;

    move-result-object v1

    const-string v2, "Android-AppSignup-GenerateUsernameAttempt"

    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    return-void

    .line 115
    :catch_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$1;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;

    move-result-object v0

    const-string v1, "UnsupportedEncodingException"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;)V

    return-void
.end method
