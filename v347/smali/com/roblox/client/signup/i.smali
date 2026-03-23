.class Lcom/roblox/client/signup/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/l/a$a;
.implements Lcom/roblox/client/l/e;
.implements Lcom/roblox/client/signup/f$b;


# instance fields
.field private a:Lcom/roblox/client/signup/f$d;

.field private b:Lcom/roblox/client/signup/f$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/f$d;Lcom/roblox/client/signup/f$a;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    .line 45
    iget-object v0, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    invoke-interface {v0, p0}, Lcom/roblox/client/signup/f$d;->a(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    invoke-interface {v0, p0}, Lcom/roblox/client/signup/f$d;->a(Lcom/roblox/client/l/e;)V

    .line 47
    iget-object v0, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    invoke-interface {v0, p0}, Lcom/roblox/client/signup/f$d;->a(Lcom/roblox/client/l/a$a;)V

    .line 48
    iput-object p2, p0, Lcom/roblox/client/signup/i;->b:Lcom/roblox/client/signup/f$a;

    .line 49
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "signup"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    invoke-interface {v0}, Lcom/roblox/client/signup/f$d;->c()V

    .line 60
    return-void
.end method

.method private a(Lcom/roblox/client/l/c;)V
    .locals 2

    .prologue
    .line 63
    const-string v0, "signup"

    const-string v1, "usernameSuggestion"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "signup"

    const-string v1, "submit"

    invoke-static {v0, p1, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 94
    const-string v1, "signup"

    if-eqz p2, :cond_0

    const-string v0, "focus"

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 94
    :cond_0
    const-string v0, "offFocus"

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "signup"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    invoke-interface {v0}, Lcom/roblox/client/signup/f$d;->b()V

    .line 70
    return-void
.end method

.method private b(Lcom/roblox/client/l/c;)V
    .locals 1

    .prologue
    .line 77
    const-string v0, "gender"

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/i;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "signup"

    const-string v1, "submit"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private c(Lcom/roblox/client/l/c;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method private d(Lcom/roblox/client/l/c;)V
    .locals 2

    .prologue
    .line 84
    const-string v0, "termsOfUse"

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/i;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/roblox/client/signup/i;->a:Lcom/roblox/client/signup/f$d;

    const-string v1, "termsOfPrivacyKey"

    invoke-virtual {p1, v1}, Lcom/roblox/client/l/c;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/roblox/client/signup/f$d;->a(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/l/d;)V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/roblox/client/signup/i$1;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/l/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 102
    :pswitch_0
    const-string v0, "signup"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/roblox/client/signup/f$c;->b:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/roblox/client/signup/i;->a()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-object v0, Lcom/roblox/client/signup/f$c;->c:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/roblox/client/signup/i;->b()V

    goto :goto_0

    .line 113
    :cond_2
    sget-object v0, Lcom/roblox/client/signup/f$c;->d:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_3

    .line 114
    const-string v0, "birthdayDay"

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/i;->a(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/i;->c(Lcom/roblox/client/l/c;)V

    goto :goto_0

    .line 117
    :cond_3
    sget-object v0, Lcom/roblox/client/signup/f$c;->e:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_4

    .line 118
    const-string v0, "birthdayMonth"

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/i;->a(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/i;->c(Lcom/roblox/client/l/c;)V

    goto :goto_0

    .line 121
    :cond_4
    sget-object v0, Lcom/roblox/client/signup/f$c;->f:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_5

    .line 122
    const-string v0, "birthdayYear"

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/i;->a(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/i;->c(Lcom/roblox/client/l/c;)V

    goto :goto_0

    .line 125
    :cond_5
    sget-object v0, Lcom/roblox/client/signup/f$c;->j:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_6

    .line 126
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/i;->b(Lcom/roblox/client/l/c;)V

    goto :goto_0

    .line 127
    :cond_6
    sget-object v0, Lcom/roblox/client/signup/f$c;->k:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_7

    .line 128
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/i;->d(Lcom/roblox/client/l/c;)V

    goto :goto_0

    .line 129
    :cond_7
    sget-object v0, Lcom/roblox/client/signup/f$c;->l:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_8

    .line 130
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/i;->a(Lcom/roblox/client/l/c;)V

    goto :goto_0

    .line 131
    :cond_8
    sget-object v0, Lcom/roblox/client/signup/f$c;->a:Lcom/roblox/client/signup/f$c;

    if-ne v0, p1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/roblox/client/signup/i;->c()V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/signup/i;->a(Ljava/lang/String;Z)V

    .line 54
    return-void
.end method
