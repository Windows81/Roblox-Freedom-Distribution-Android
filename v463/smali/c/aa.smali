.class public final Lc/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/aa$a;
    }
.end annotation


# instance fields
.field private final a:Lc/t;

.field private final b:Ljava/lang/String;

.field private final c:Lc/s;

.field private final d:Lc/ab;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lc/d;


# direct methods
.method private constructor <init>(Lc/aa$a;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lc/aa$a;->a(Lc/aa$a;)Lc/t;

    move-result-object v0

    iput-object v0, p0, Lc/aa;->a:Lc/t;

    .line 37
    invoke-static {p1}, Lc/aa$a;->b(Lc/aa$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aa;->b:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lc/aa$a;->c(Lc/aa$a;)Lc/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lc/s$a;->a()Lc/s;

    move-result-object v0

    iput-object v0, p0, Lc/aa;->c:Lc/s;

    .line 39
    invoke-static {p1}, Lc/aa$a;->d(Lc/aa$a;)Lc/ab;

    move-result-object v0

    iput-object v0, p0, Lc/aa;->d:Lc/ab;

    .line 40
    invoke-static {p1}, Lc/aa$a;->e(Lc/aa$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/aa$a;->e(Lc/aa$a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lc/aa;->e:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lc/aa$a;Lc/aa$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lc/aa;-><init>(Lc/aa$a;)V

    return-void
.end method

.method static synthetic a(Lc/aa;)Lc/t;
    .locals 0

    .line 26
    iget-object p0, p0, Lc/aa;->a:Lc/t;

    return-object p0
.end method

.method static synthetic b(Lc/aa;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lc/aa;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/aa;)Lc/ab;
    .locals 0

    .line 26
    iget-object p0, p0, Lc/aa;->d:Lc/ab;

    return-object p0
.end method

.method static synthetic d(Lc/aa;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lc/aa;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lc/aa;)Lc/s;
    .locals 0

    .line 26
    iget-object p0, p0, Lc/aa;->c:Lc/s;

    return-object p0
.end method


# virtual methods
.method public a()Lc/t;
    .locals 1

    .line 44
    iget-object v0, p0, Lc/aa;->a:Lc/t;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lc/aa;->c:Lc/s;

    invoke-virtual {v0, p1}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lc/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lc/s;
    .locals 1

    .line 52
    iget-object v0, p0, Lc/aa;->c:Lc/s;

    return-object v0
.end method

.method public d()Lc/ab;
    .locals 1

    .line 64
    iget-object v0, p0, Lc/aa;->d:Lc/ab;

    return-object v0
.end method

.method public e()Lc/aa$a;
    .locals 2

    .line 72
    new-instance v0, Lc/aa$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/aa$a;-><init>(Lc/aa;Lc/aa$1;)V

    return-object v0
.end method

.method public f()Lc/d;
    .locals 1

    .line 80
    iget-object v0, p0, Lc/aa;->f:Lc/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lc/aa;->c:Lc/s;

    invoke-static {v0}, Lc/d;->a(Lc/s;)Lc/d;

    move-result-object v0

    iput-object v0, p0, Lc/aa;->f:Lc/d;

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lc/aa;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/aa;->a:Lc/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/aa;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
