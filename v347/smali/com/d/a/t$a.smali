.class public Lcom/d/a/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/d/a/j;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/d/a/d;

.field private e:Lcom/d/a/t$c;

.field private f:Lcom/d/a/t$f;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/d/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-nez p1, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/t$a;->a:Landroid/content/Context;

    .line 704
    return-void
.end method


# virtual methods
.method public a()Lcom/d/a/t;
    .locals 19

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/d/a/t$a;->a:Landroid/content/Context;

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/d/a/t$a;->b:Lcom/d/a/j;

    if-nez v1, :cond_0

    .line 832
    invoke-static {v2}, Lcom/d/a/ae;->a(Landroid/content/Context;)Lcom/d/a/j;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/d/a/t$a;->b:Lcom/d/a/j;

    .line 834
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    if-nez v1, :cond_1

    .line 835
    new-instance v1, Lcom/d/a/m;

    invoke-direct {v1, v2}, Lcom/d/a/m;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    .line 837
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/d/a/t$a;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 838
    new-instance v1, Lcom/d/a/v;

    invoke-direct {v1}, Lcom/d/a/v;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/d/a/t$a;->c:Ljava/util/concurrent/ExecutorService;

    .line 840
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/d/a/t$a;->f:Lcom/d/a/t$f;

    if-nez v1, :cond_3

    .line 841
    sget-object v1, Lcom/d/a/t$f;->a:Lcom/d/a/t$f;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/d/a/t$a;->f:Lcom/d/a/t$f;

    .line 844
    :cond_3
    new-instance v7, Lcom/d/a/aa;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    invoke-direct {v7, v1}, Lcom/d/a/aa;-><init>(Lcom/d/a/d;)V

    .line 846
    new-instance v1, Lcom/d/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/d/a/t$a;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/d/a/t;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/d/a/t$a;->b:Lcom/d/a/j;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    invoke-direct/range {v1 .. v7}, Lcom/d/a/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/d/a/j;Lcom/d/a/d;Lcom/d/a/aa;)V

    .line 848
    new-instance v8, Lcom/d/a/t;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/d/a/t$a;->e:Lcom/d/a/t$c;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/d/a/t$a;->f:Lcom/d/a/t$f;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/d/a/t$a;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/d/a/t$a;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/d/a/t$a;->i:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/d/a/t$a;->j:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/d/a/t;-><init>(Landroid/content/Context;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/t$c;Lcom/d/a/t$f;Ljava/util/List;Lcom/d/a/aa;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v8
.end method
