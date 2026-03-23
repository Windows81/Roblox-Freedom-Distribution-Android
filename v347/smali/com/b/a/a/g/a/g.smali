.class public Lcom/b/a/a/g/a/g;
.super Lcom/b/a/a/g/b;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/Object;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/b/a/a/g/i;->f:Lcom/b/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/b/a/a/g/b;-><init>(Lcom/b/a/a/g/i;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/a/g;->d:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/b/a/a/g/a/g;->e:J

    .line 33
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/b/a/a/g/a/g;->d:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/b/a/a/g/a/g;->e:J

    return-wide v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/b/a/a/g/a/g;->d:Ljava/lang/Object;

    return-object v0
.end method
