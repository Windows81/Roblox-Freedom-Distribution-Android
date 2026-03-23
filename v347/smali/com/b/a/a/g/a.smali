.class Lcom/b/a/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/b/a/a/g/b;

.field final b:Lcom/b/a/a/g/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/g/c;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 10
    iput-object p1, p0, Lcom/b/a/a/g/a;->b:Lcom/b/a/a/g/c;

    .line 11
    return-void
.end method


# virtual methods
.method a(JLcom/b/a/a/g/e;)Ljava/lang/Long;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    const-string v1, "flushing messages at time %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    iget-wide v2, v1, Lcom/b/a/a/g/b;->c:J

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 17
    iget-object v2, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v2, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 18
    iput-object v0, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 19
    invoke-interface {p3, v1}, Lcom/b/a/a/g/e;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    if-eqz v1, :cond_1

    .line 22
    const-string v0, "returning next ready at %d ns"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    iget-wide v2, v2, Lcom/b/a/a/g/b;->c:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    iget-wide v0, v0, Lcom/b/a/a/g/b;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    :cond_1
    return-object v0
.end method

.method a(Lcom/b/a/a/g/b;J)V
    .locals 6

    .prologue
    .line 28
    const-string v0, "add delayed message %s at time %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iput-wide p2, p1, Lcom/b/a/a/g/b;->c:J

    .line 30
    iget-object v0, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 47
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 36
    :goto_1
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/b/a/a/g/b;->c:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_1

    .line 38
    iget-object v1, v0, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 40
    :cond_1
    if-nez v1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    iput-object v0, p1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 42
    iput-object p1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    goto :goto_0

    .line 44
    :cond_2
    iput-object p1, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 45
    iput-object v0, p1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    goto :goto_0
.end method

.method public a(Lcom/b/a/a/g/d;)V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 61
    :goto_0
    if-eqz v1, :cond_2

    .line 62
    invoke-interface {p1, v1}, Lcom/b/a/a/g/d;->a(Lcom/b/a/a/g/b;)Z

    move-result v3

    .line 63
    iget-object v2, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 64
    if-eqz v3, :cond_1

    .line 65
    if-nez v0, :cond_0

    .line 66
    iget-object v3, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v3, p0, Lcom/b/a/a/g/a;->a:Lcom/b/a/a/g/b;

    .line 70
    :goto_1
    iget-object v3, p0, Lcom/b/a/a/g/a;->b:Lcom/b/a/a/g/c;

    invoke-virtual {v3, v1}, Lcom/b/a/a/g/c;->a(Lcom/b/a/a/g/b;)V

    :goto_2
    move-object v1, v2

    .line 75
    goto :goto_0

    .line 68
    :cond_0
    iget-object v3, v1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v3, v0, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 72
    goto :goto_2

    .line 76
    :cond_2
    return-void
.end method
