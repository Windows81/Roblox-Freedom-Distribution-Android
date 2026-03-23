.class Lcom/roblox/client/signup/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/e$a;,
        Lcom/roblox/client/signup/e$b;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/http/f;

.field private b:Lcom/roblox/client/http/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/http/f;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.signup"

    const-string v1, "[SignUpHelper] Constructor called."

    .line 48
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/roblox/client/signup/e;->a:Lcom/roblox/client/http/f;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/e;Lcom/roblox/client/http/c;)Lcom/roblox/client/http/c;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/roblox/client/signup/e;->b:Lcom/roblox/client/http/c;

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/roblox/client/signup/e$a;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/roblox/client/signup/e;->b:Lcom/roblox/client/http/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Lcom/roblox/client/http/c;->cancel(Z)Z

    .line 96
    iput-object v1, p0, Lcom/roblox/client/signup/e;->b:Lcom/roblox/client/http/c;

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {p2, v2}, Lcom/roblox/client/signup/e$a;->a(Z)V

    return-void

    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    .line 107
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    new-instance v0, Lcom/roblox/client/signup/e$2;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/signup/e$2;-><init>(Lcom/roblox/client/signup/e;Lcom/roblox/client/signup/e$a;)V

    .line 140
    iget-object p2, p0, Lcom/roblox/client/signup/e;->a:Lcom/roblox/client/http/f;

    .line 142
    invoke-static {p1}, Lcom/roblox/client/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-interface {p2, p1, v1, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/e;->b:Lcom/roblox/client/http/c;

    .line 145
    invoke-virtual {p1}, Lcom/roblox/client/http/c;->c()V

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 109
    invoke-interface {p2, p1}, Lcom/roblox/client/signup/e$a;->a(Z)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/e$b;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/roblox/client/signup/e$1;

    invoke-direct {v0, p0, p3}, Lcom/roblox/client/signup/e$1;-><init>(Lcom/roblox/client/signup/e;Lcom/roblox/client/signup/e$b;)V

    .line 82
    invoke-static {p2}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    iget-object p3, p0, Lcom/roblox/client/signup/e;->a:Lcom/roblox/client/http/f;

    .line 86
    invoke-static {p1, p2}, Lcom/roblox/client/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 85
    invoke-interface {p3, p1, p2, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/roblox/client/http/c;->c()V

    return-void
.end method
