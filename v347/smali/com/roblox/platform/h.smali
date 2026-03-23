.class public Lcom/roblox/platform/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/e;


# instance fields
.field protected a:Lcom/roblox/platform/http/c/a;

.field protected b:Lcom/roblox/platform/http/c/b;

.field protected c:Lcom/roblox/platform/http/c/g;

.field protected d:Lcom/roblox/platform/http/c/c;

.field protected e:Lcom/roblox/platform/http/c/e;

.field protected f:Lcom/roblox/platform/http/c/d;

.field protected g:Lb/w;

.field protected h:Ld/c$a;


# direct methods
.method public constructor <init>(Lb/w;Ld/c$a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 33
    iput-object p2, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/platform/c;)Lcom/roblox/platform/e;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/platform/h;->a:Lcom/roblox/platform/http/c/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/roblox/platform/http/c/f;

    iget-object v1, p1, Lcom/roblox/platform/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 42
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 43
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 44
    const-class v1, Lcom/roblox/platform/http/c/a;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/a;

    iput-object v0, p0, Lcom/roblox/platform/h;->a:Lcom/roblox/platform/http/c/a;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/h;->b:Lcom/roblox/platform/http/c/b;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/roblox/platform/http/c/f;

    const-string v1, "chat"

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 48
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 49
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 50
    const-class v1, Lcom/roblox/platform/http/c/b;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/b;

    iput-object v0, p0, Lcom/roblox/platform/h;->b:Lcom/roblox/platform/http/c/b;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/roblox/platform/h;->c:Lcom/roblox/platform/http/c/g;

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lcom/roblox/platform/http/c/f;

    iget-object v1, p1, Lcom/roblox/platform/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 54
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 55
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 56
    const-class v1, Lcom/roblox/platform/http/c/g;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/g;

    iput-object v0, p0, Lcom/roblox/platform/h;->c:Lcom/roblox/platform/http/c/g;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/roblox/platform/h;->d:Lcom/roblox/platform/http/c/c;

    if-nez v0, :cond_3

    .line 59
    new-instance v0, Lcom/roblox/platform/http/c/f;

    const-string v1, "clientsettings.api"

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 60
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 61
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 62
    const-class v1, Lcom/roblox/platform/http/c/c;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/c;

    iput-object v0, p0, Lcom/roblox/platform/h;->d:Lcom/roblox/platform/http/c/c;

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/roblox/platform/h;->e:Lcom/roblox/platform/http/c/e;

    if-nez v0, :cond_4

    .line 65
    new-instance v0, Lcom/roblox/platform/http/c/f;

    const-string v1, "notifications"

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 66
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 67
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 68
    const-class v1, Lcom/roblox/platform/http/c/e;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/e;

    iput-object v0, p0, Lcom/roblox/platform/h;->e:Lcom/roblox/platform/http/c/e;

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/roblox/platform/h;->f:Lcom/roblox/platform/http/c/d;

    if-nez v0, :cond_5

    .line 71
    new-instance v0, Lcom/roblox/platform/http/c/f;

    const-string v1, "locale"

    iget-object v2, p1, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/roblox/platform/h;->g:Lb/w;

    .line 72
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 73
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 74
    const-class v1, Lcom/roblox/platform/http/c/d;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/d;

    iput-object v0, p0, Lcom/roblox/platform/h;->f:Lcom/roblox/platform/http/c/d;

    .line 76
    :cond_5
    return-object p0
.end method

.method public a()Lcom/roblox/platform/http/c/a;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/roblox/platform/h;->a:Lcom/roblox/platform/http/c/a;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "API interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/h;->a:Lcom/roblox/platform/http/c/a;

    return-object v0
.end method

.method public a(Lb/w;)Lcom/roblox/platform/http/c/d;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/roblox/platform/http/c/f;

    const-string v1, "locale"

    invoke-static {}, Lcom/roblox/platform/g;->c()Lcom/roblox/platform/c;

    move-result-object v2

    iget-object v2, v2, Lcom/roblox/platform/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/http/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Lcom/roblox/platform/http/c/f;->a(Lb/w;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/h;->h:Ld/c$a;

    .line 131
    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ld/c$a;)Lcom/roblox/platform/http/c/f;

    move-result-object v0

    .line 132
    const-class v1, Lcom/roblox/platform/http/c/d;

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/c/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/platform/http/c/d;

    .line 134
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Locale interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    return-object v0
.end method

.method public b()Lcom/roblox/platform/http/c/b;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/roblox/platform/h;->b:Lcom/roblox/platform/http/c/b;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CHAT interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/h;->b:Lcom/roblox/platform/http/c/b;

    return-object v0
.end method

.method public c()Lcom/roblox/platform/http/c/g;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/roblox/platform/h;->c:Lcom/roblox/platform/http/c/g;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WWW interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/h;->c:Lcom/roblox/platform/http/c/g;

    return-object v0
.end method

.method public d()Lcom/roblox/platform/http/c/e;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/roblox/platform/h;->e:Lcom/roblox/platform/http/c/e;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Notifications interface not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/h;->e:Lcom/roblox/platform/http/c/e;

    return-object v0
.end method
