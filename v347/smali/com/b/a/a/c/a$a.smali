.class public final Lcom/b/a/a/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/b/a/a/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/b/a/a/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/a/c/a;-><init>(Lcom/b/a/a/c/a$1;)V

    iput-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    .line 138
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/a/c/a;->f:Landroid/content/Context;

    .line 139
    return-void
.end method


# virtual methods
.method public a(I)Lcom/b/a/a/c/a$a;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iput p1, v0, Lcom/b/a/a/c/a;->d:I

    .line 159
    return-object p0
.end method

.method public a(Lcom/b/a/a/f/a;)Lcom/b/a/a/c/a$a;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iput-object p1, v0, Lcom/b/a/a/c/a;->j:Lcom/b/a/a/f/a;

    .line 275
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/a/c/a$a;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iput-object p1, v0, Lcom/b/a/a/c/a;->a:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public a()Lcom/b/a/a/c/a;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iget-object v0, v0, Lcom/b/a/a/c/a;->g:Lcom/b/a/a/p;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    new-instance v1, Lcom/b/a/a/g;

    invoke-direct {v1}, Lcom/b/a/a/g;-><init>()V

    iput-object v1, v0, Lcom/b/a/a/c/a;->g:Lcom/b/a/a/p;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iget-object v0, v0, Lcom/b/a/a/c/a;->i:Lcom/b/a/a/h/b;

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    new-instance v1, Lcom/b/a/a/h/c;

    iget-object v2, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iget-object v2, v2, Lcom/b/a/a/c/a;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/b/a/a/h/c;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/b/a/a/c/a;->i:Lcom/b/a/a/h/b;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iget-object v0, v0, Lcom/b/a/a/c/a;->k:Lcom/b/a/a/k/b;

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    new-instance v1, Lcom/b/a/a/k/a;

    invoke-direct {v1}, Lcom/b/a/a/k/a;-><init>()V

    iput-object v1, v0, Lcom/b/a/a/c/a;->k:Lcom/b/a/a/k/b;

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    return-object v0
.end method

.method public b(I)Lcom/b/a/a/c/a$a;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iput p1, v0, Lcom/b/a/a/c/a;->b:I

    .line 244
    return-object p0
.end method

.method public c(I)Lcom/b/a/a/c/a$a;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iput p1, v0, Lcom/b/a/a/c/a;->c:I

    .line 255
    return-object p0
.end method

.method public d(I)Lcom/b/a/a/c/a$a;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/b/a/a/c/a$a;->a:Lcom/b/a/a/c/a;

    iput p1, v0, Lcom/b/a/a/c/a;->e:I

    .line 288
    return-object p0
.end method
