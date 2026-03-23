.class Lcom/roblox/client/signup/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/g$a;,
        Lcom/roblox/client/signup/g$b;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/http/f;

.field private b:Lcom/roblox/client/http/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/http/f;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "rbx.signup"

    const-string v1, "[SignUpHelper] Constructor called."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/roblox/client/signup/g;->a:Lcom/roblox/client/http/f;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/g;Lcom/roblox/client/http/c;)Lcom/roblox/client/http/c;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/roblox/client/signup/g;->b:Lcom/roblox/client/http/c;

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/roblox/client/signup/g$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/roblox/client/signup/g;->b:Lcom/roblox/client/http/c;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/roblox/client/signup/g;->b:Lcom/roblox/client/http/c;

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/c;->cancel(Z)Z

    .line 96
    iput-object v3, p0, Lcom/roblox/client/signup/g;->b:Lcom/roblox/client/http/c;

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {p2, v1}, Lcom/roblox/client/signup/g$a;->a(Z)V

    .line 146
    :goto_0
    return-void

    .line 107
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    new-instance v1, Lcom/roblox/client/signup/g$2;

    invoke-direct {v1, p0, p2}, Lcom/roblox/client/signup/g$2;-><init>(Lcom/roblox/client/signup/g;Lcom/roblox/client/signup/g$a;)V

    .line 140
    iget-object v2, p0, Lcom/roblox/client/signup/g;->a:Lcom/roblox/client/http/f;

    .line 142
    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->emailValidationAuthUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-interface {v2, v0, v3, v1}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/g;->b:Lcom/roblox/client/http/c;

    .line 145
    iget-object v0, p0, Lcom/roblox/client/signup/g;->b:Lcom/roblox/client/http/c;

    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/roblox/client/signup/g$a;->a(Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/g$b;)V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/roblox/client/signup/g$1;

    invoke-direct {v0, p0, p3}, Lcom/roblox/client/signup/g$1;-><init>(Lcom/roblox/client/signup/g;Lcom/roblox/client/signup/g$b;)V

    .line 82
    invoke-static {p2}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/roblox/client/signup/g;->a:Lcom/roblox/client/http/f;

    .line 86
    invoke-static {p1, v1}, Lcom/roblox/client/RobloxSettings;->usernameSuggestionAuthUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 85
    invoke-interface {v2, v1, v3, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    .line 90
    return-void
.end method
