.class abstract Lb/a/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:Lc/i;

.field protected b:Z

.field final synthetic c:Lb/a/d/c;


# direct methods
.method private constructor <init>(Lb/a/d/c;)V
    .locals 2

    .prologue
    .line 336
    iput-object p1, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Lc/i;

    iget-object v1, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v1}, Lb/a/d/c;->b(Lb/a/d/c;)Lc/e;

    move-result-object v1

    invoke-interface {v1}, Lc/e;->a()Lc/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/i;-><init>(Lc/t;)V

    iput-object v0, p0, Lb/a/d/c$a;->a:Lc/i;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/d/c;Lb/a/d/c$1;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lb/a/d/c$a;-><init>(Lb/a/d/c;)V

    return-void
.end method


# virtual methods
.method public a()Lc/t;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lb/a/d/c$a;->a:Lc/i;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 349
    iget-object v0, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->c(Lb/a/d/c;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->c(Lb/a/d/c;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v2}, Lb/a/d/c;->c(Lb/a/d/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2
    iget-object v0, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    iget-object v1, p0, Lb/a/d/c$a;->a:Lc/i;

    invoke-static {v0, v1}, Lb/a/d/c;->a(Lb/a/d/c;Lc/i;)V

    .line 354
    iget-object v0, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v0, v2}, Lb/a/d/c;->a(Lb/a/d/c;I)I

    .line 355
    iget-object v0, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->d(Lb/a/d/c;)Lb/a/b/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->d(Lb/a/d/c;)Lb/a/b/g;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lb/a/d/c$a;->c:Lb/a/d/c;

    invoke-virtual {v1, v0, v2}, Lb/a/b/g;->a(ZLb/a/d/h;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
