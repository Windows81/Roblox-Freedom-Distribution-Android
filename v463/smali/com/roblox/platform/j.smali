.class public Lcom/roblox/platform/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/f;


# instance fields
.field protected a:Lcom/roblox/platform/http/c/c;

.field protected b:Lcom/roblox/platform/http/c/e;

.field protected c:Lcom/roblox/platform/http/c/f;

.field protected d:Lcom/roblox/platform/http/c/i;

.field protected e:Lcom/roblox/platform/http/c/h;

.field protected f:Lcom/roblox/platform/http/c/g;

.field protected g:Lcom/roblox/platform/http/c/l;

.field protected h:Lcom/roblox/platform/http/c/b;

.field protected i:Lcom/roblox/platform/http/c/d;

.field protected j:Lcom/roblox/platform/http/c/a;

.field protected k:Lcom/roblox/platform/http/c/k;

.field protected l:Lc/x;

.field protected m:Le/c$a;


# direct methods
.method public constructor <init>(Lc/x;Le/c$a;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 43
    iput-object p2, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/platform/c;)Lcom/roblox/platform/f;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/roblox/platform/j;->a:Lcom/roblox/platform/http/c/c;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 52
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 53
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 54
    const-class v1, Lcom/roblox/platform/http/c/c;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/c;

    iput-object v0, p0, Lcom/roblox/platform/j;->a:Lcom/roblox/platform/http/c/c;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/j;->b:Lcom/roblox/platform/http/c/e;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "chat"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 58
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 59
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 60
    const-class v1, Lcom/roblox/platform/http/c/e;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/e;

    iput-object v0, p0, Lcom/roblox/platform/j;->b:Lcom/roblox/platform/http/c/e;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/roblox/platform/j;->c:Lcom/roblox/platform/http/c/f;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "clientsettings.api"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 64
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 65
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 66
    const-class v1, Lcom/roblox/platform/http/c/f;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/f;

    iput-object v0, p0, Lcom/roblox/platform/j;->c:Lcom/roblox/platform/http/c/f;

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/j;->d:Lcom/roblox/platform/http/c/i;

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "notifications"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 70
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 71
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 72
    const-class v1, Lcom/roblox/platform/http/c/i;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/i;

    iput-object v0, p0, Lcom/roblox/platform/j;->d:Lcom/roblox/platform/http/c/i;

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/roblox/platform/j;->e:Lcom/roblox/platform/http/c/h;

    if-nez v0, :cond_4

    .line 75
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "locale"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 76
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 77
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 78
    const-class v1, Lcom/roblox/platform/http/c/h;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/h;

    iput-object v0, p0, Lcom/roblox/platform/j;->e:Lcom/roblox/platform/http/c/h;

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/roblox/platform/j;->f:Lcom/roblox/platform/http/c/g;

    if-nez v0, :cond_5

    .line 81
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "friends"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 82
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 83
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 84
    const-class v1, Lcom/roblox/platform/http/c/g;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/g;

    iput-object v0, p0, Lcom/roblox/platform/j;->f:Lcom/roblox/platform/http/c/g;

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/roblox/platform/j;->g:Lcom/roblox/platform/http/c/l;

    if-nez v0, :cond_6

    .line 87
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "translations"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 88
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 89
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 90
    const-class v1, Lcom/roblox/platform/http/c/l;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/l;

    iput-object v0, p0, Lcom/roblox/platform/j;->g:Lcom/roblox/platform/http/c/l;

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/roblox/platform/j;->h:Lcom/roblox/platform/http/c/b;

    if-nez v0, :cond_7

    .line 93
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "accountsettings"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 94
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 95
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 96
    const-class v1, Lcom/roblox/platform/http/c/b;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/b;

    iput-object v0, p0, Lcom/roblox/platform/j;->h:Lcom/roblox/platform/http/c/b;

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/roblox/platform/j;->i:Lcom/roblox/platform/http/c/d;

    if-nez v0, :cond_8

    .line 99
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "auth"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 100
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 101
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 102
    const-class v1, Lcom/roblox/platform/http/c/d;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/d;

    iput-object v0, p0, Lcom/roblox/platform/j;->i:Lcom/roblox/platform/http/c/d;

    .line 104
    :cond_8
    iget-object v0, p0, Lcom/roblox/platform/j;->j:Lcom/roblox/platform/http/c/a;

    if-nez v0, :cond_9

    .line 105
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object v1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "accountinformation"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 106
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 107
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object v0

    .line 108
    const-class v1, Lcom/roblox/platform/http/c/a;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/a;

    iput-object v0, p0, Lcom/roblox/platform/j;->j:Lcom/roblox/platform/http/c/a;

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/roblox/platform/j;->k:Lcom/roblox/platform/http/c/k;

    if-nez v0, :cond_a

    .line 111
    new-instance v0, Lcom/roblox/platform/http/c/j;

    iget-object p1, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v1, "thumbnails"

    invoke-direct {v0, v1, p1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/roblox/platform/j;->l:Lc/x;

    .line 112
    invoke-virtual {v0, p1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 113
    invoke-virtual {p1, v0}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object p1

    .line 114
    const-class v0, Lcom/roblox/platform/http/c/k;

    invoke-virtual {p1, v0}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/platform/http/c/k;

    iput-object p1, p0, Lcom/roblox/platform/j;->k:Lcom/roblox/platform/http/c/k;

    :cond_a
    return-object p0
.end method

.method public a()Lcom/roblox/platform/http/c/c;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/roblox/platform/j;->a:Lcom/roblox/platform/http/c/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "API interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lc/x;)Lcom/roblox/platform/http/c/h;
    .locals 3

    .line 161
    new-instance v0, Lcom/roblox/platform/http/c/j;

    invoke-static {}, Lcom/roblox/platform/i;->c()Lcom/roblox/platform/c;

    move-result-object v1

    iget-object v1, v1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    const-string v2, "locale"

    invoke-direct {v0, v2, v1}, Lcom/roblox/platform/http/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Lcom/roblox/platform/http/c/j;->a(Lc/x;)Lcom/roblox/platform/http/c/j;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/platform/j;->m:Le/c$a;

    .line 163
    invoke-virtual {p1, v0}, Lcom/roblox/platform/http/c/j;->a(Le/c$a;)Lcom/roblox/platform/http/c/j;

    move-result-object p1

    .line 164
    const-class v0, Lcom/roblox/platform/http/c/h;

    invoke-virtual {p1, v0}, Lcom/roblox/platform/http/c/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/platform/http/c/h;

    if-eqz p1, :cond_0

    return-object p1

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Locale interface not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/roblox/platform/http/c/e;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/roblox/platform/j;->b:Lcom/roblox/platform/http/c/e;

    if-eqz v0, :cond_0

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CHAT interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/roblox/platform/http/c/i;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/roblox/platform/j;->d:Lcom/roblox/platform/http/c/i;

    if-eqz v0, :cond_0

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Notifications interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/roblox/platform/http/c/g;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/roblox/platform/j;->f:Lcom/roblox/platform/http/c/g;

    if-eqz v0, :cond_0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Friends interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/roblox/platform/http/c/l;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/roblox/platform/j;->g:Lcom/roblox/platform/http/c/l;

    if-eqz v0, :cond_0

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Translations interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lcom/roblox/platform/http/c/b;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/roblox/platform/j;->h:Lcom/roblox/platform/http/c/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AccountSettings interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/roblox/platform/http/c/d;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/roblox/platform/j;->i:Lcom/roblox/platform/http/c/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Authentication interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lcom/roblox/platform/http/c/a;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/roblox/platform/j;->j:Lcom/roblox/platform/http/c/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AccountInformationInterface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/roblox/platform/http/c/k;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/roblox/platform/j;->k:Lcom/roblox/platform/http/c/k;

    if-eqz v0, :cond_0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Thumbnails interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
