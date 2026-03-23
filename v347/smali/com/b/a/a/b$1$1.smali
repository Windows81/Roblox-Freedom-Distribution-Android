.class Lcom/b/a/a/b$1$1;
.super Lcom/b/a/a/g/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/b/a/a/b$1;


# direct methods
.method constructor <init>(Lcom/b/a/a/b$1;)V
    .locals 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    invoke-direct {p0}, Lcom/b/a/a/g/f;-><init>()V

    .line 66
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/b/a/a/b$1$1;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public a(Lcom/b/a/a/g/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    sget-object v1, Lcom/b/a/a/g/i;->a:Lcom/b/a/a/g/i;

    if-ne v0, v1, :cond_1

    .line 75
    check-cast p1, Lcom/b/a/a/g/a/b;

    .line 76
    iget-object v0, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    iget-object v0, v0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    invoke-static {v0, p1}, Lcom/b/a/a/b;->a(Lcom/b/a/a/b;Lcom/b/a/a/g/a/b;)V

    .line 77
    iget-object v0, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    iget-object v0, v0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    invoke-static {v0}, Lcom/b/a/a/b;->a(Lcom/b/a/a/b;)Lcom/b/a/a/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/b$1$1;->a:J

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    sget-object v1, Lcom/b/a/a/g/i;->b:Lcom/b/a/a/g/i;

    if-ne v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    iget-object v0, v0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    check-cast p1, Lcom/b/a/a/g/a/d;

    invoke-static {v0, p1}, Lcom/b/a/a/b;->a(Lcom/b/a/a/b;Lcom/b/a/a/g/a/d;)V

    .line 80
    iget-object v0, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    iget-object v0, v0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    invoke-static {v0}, Lcom/b/a/a/b;->a(Lcom/b/a/a/b;)Lcom/b/a/a/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/b$1$1;->a:J

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    sget-object v1, Lcom/b/a/a/g/i;->d:Lcom/b/a/a/g/i;

    if-ne v0, v1, :cond_3

    .line 82
    check-cast p1, Lcom/b/a/a/g/a/e;

    .line 83
    invoke-virtual {p1}, Lcom/b/a/a/g/a/e;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    iget-object v0, v0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    iget-object v0, v0, Lcom/b/a/a/b;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v0}, Lcom/b/a/a/g/h;->a()V

    .line 85
    iget-object v0, p0, Lcom/b/a/a/b$1$1;->b:Lcom/b/a/a/b$1;

    iget-object v0, v0, Lcom/b/a/a/b$1;->a:Lcom/b/a/a/b;

    invoke-static {v0}, Lcom/b/a/a/b;->b(Lcom/b/a/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    sget-object v1, Lcom/b/a/a/g/i;->e:Lcom/b/a/a/g/i;

    if-ne v0, v1, :cond_0

    .line 88
    check-cast p1, Lcom/b/a/a/g/a/h;

    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/b/a/a/h;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
