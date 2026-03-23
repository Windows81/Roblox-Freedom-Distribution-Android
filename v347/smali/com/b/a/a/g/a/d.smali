.class public Lcom/b/a/a/g/a/d;
.super Lcom/b/a/a/g/b;
.source "SourceFile"


# instance fields
.field d:Lcom/b/a/a/d$a;

.field e:Lcom/b/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/b/a/a/g/i;->b:Lcom/b/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/b/a/a/g/b;-><init>(Lcom/b/a/a/g/i;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/b/a/a/g/a/d;->e:Lcom/b/a/a/d;

    .line 17
    iput-object v0, p0, Lcom/b/a/a/g/a/d;->d:Lcom/b/a/a/d$a;

    .line 18
    return-void
.end method

.method public a(Lcom/b/a/a/d$a;Lcom/b/a/a/d;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/b/a/a/g/a/d;->d:Lcom/b/a/a/d$a;

    .line 22
    iput-object p2, p0, Lcom/b/a/a/g/a/d;->e:Lcom/b/a/a/d;

    .line 23
    return-void
.end method

.method public c()Lcom/b/a/a/d$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/b/a/a/g/a/d;->d:Lcom/b/a/a/d$a;

    return-object v0
.end method

.method public d()Lcom/b/a/a/d;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/b/a/a/g/a/d;->e:Lcom/b/a/a/d;

    return-object v0
.end method
