.class public Landroidx/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/i/a/c$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/h/e$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/h/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Landroidx/h/e$c;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Z

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$c;Landroidx/h/e$d;Ljava/util/List;ZLandroidx/h/e$c;Ljava/util/concurrent/Executor;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/i/a/c$c;",
            "Landroidx/h/e$d;",
            "Ljava/util/List<",
            "Landroidx/h/e$b;",
            ">;Z",
            "Landroidx/h/e$c;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p3, p0, Landroidx/h/a;->a:Landroidx/i/a/c$c;

    .line 115
    iput-object p1, p0, Landroidx/h/a;->b:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Landroidx/h/a;->c:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Landroidx/h/a;->d:Landroidx/h/e$d;

    .line 118
    iput-object p5, p0, Landroidx/h/a;->e:Ljava/util/List;

    .line 119
    iput-boolean p6, p0, Landroidx/h/a;->f:Z

    .line 120
    iput-object p7, p0, Landroidx/h/a;->g:Landroidx/h/e$c;

    .line 121
    iput-object p8, p0, Landroidx/h/a;->h:Ljava/util/concurrent/Executor;

    .line 122
    iput-boolean p9, p0, Landroidx/h/a;->i:Z

    .line 123
    iput-object p10, p0, Landroidx/h/a;->j:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Landroidx/h/a;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/h/a;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
