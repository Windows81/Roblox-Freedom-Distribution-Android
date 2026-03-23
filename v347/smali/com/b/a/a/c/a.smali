.class public Lcom/b/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/c/a$1;,
        Lcom/b/a/a/c/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/Context;

.field g:Lcom/b/a/a/p;

.field h:Lcom/b/a/a/d/a;

.field i:Lcom/b/a/a/h/b;

.field j:Lcom/b/a/a/f/a;

.field k:Lcom/b/a/a/k/b;

.field l:Lcom/b/a/a/j/a;

.field m:Z

.field n:Z

.field o:I

.field p:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "default_job_manager"

    iput-object v0, p0, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/b/a/a/c/a;->b:I

    .line 50
    iput v1, p0, Lcom/b/a/a/c/a;->c:I

    .line 51
    const/16 v0, 0xf

    iput v0, p0, Lcom/b/a/a/c/a;->d:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/b/a/a/c/a;->e:I

    .line 60
    iput-boolean v1, p0, Lcom/b/a/a/c/a;->m:Z

    .line 61
    iput-boolean v1, p0, Lcom/b/a/a/c/a;->n:Z

    .line 62
    iput v2, p0, Lcom/b/a/a/c/a;->o:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/c/a;->p:Z

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/c/a$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/b/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/b/a/a/c/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/b/a/a/c/a;->p:Z

    return v0
.end method

.method public d()Lcom/b/a/a/p;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/b/a/a/c/a;->g:Lcom/b/a/a/p;

    return-object v0
.end method

.method public e()Lcom/b/a/a/d/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/b/a/a/c/a;->h:Lcom/b/a/a/d/a;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/b/a/a/c/a;->d:I

    return v0
.end method

.method public g()Lcom/b/a/a/h/b;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/b/a/a/c/a;->i:Lcom/b/a/a/h/b;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/b/a/a/c/a;->b:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/b/a/a/c/a;->c:I

    return v0
.end method

.method public j()Lcom/b/a/a/f/a;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/b/a/a/c/a;->j:Lcom/b/a/a/f/a;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/b/a/a/c/a;->e:I

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/b/a/a/c/a;->m:Z

    return v0
.end method

.method public m()Lcom/b/a/a/k/b;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/b/a/a/c/a;->k:Lcom/b/a/a/k/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/b/a/a/c/a;->n:Z

    return v0
.end method

.method public o()Lcom/b/a/a/j/a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/b/a/a/c/a;->l:Lcom/b/a/a/j/a;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/b/a/a/c/a;->o:I

    return v0
.end method
