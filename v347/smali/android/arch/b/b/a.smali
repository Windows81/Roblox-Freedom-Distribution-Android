.class public Landroid/arch/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/arch/b/a/c$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/arch/b/b/e$c;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/arch/b/b/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/b/a/c$c;Landroid/arch/b/b/e$c;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/arch/b/a/c$c;",
            "Landroid/arch/b/b/e$c;",
            "Ljava/util/List",
            "<",
            "Landroid/arch/b/b/e$b;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p3, p0, Landroid/arch/b/b/a;->a:Landroid/arch/b/a/c$c;

    .line 89
    iput-object p1, p0, Landroid/arch/b/b/a;->b:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/arch/b/b/a;->c:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Landroid/arch/b/b/a;->d:Landroid/arch/b/b/e$c;

    .line 92
    iput-object p5, p0, Landroid/arch/b/b/a;->e:Ljava/util/List;

    .line 93
    iput-boolean p6, p0, Landroid/arch/b/b/a;->f:Z

    .line 94
    iput-boolean p7, p0, Landroid/arch/b/b/a;->g:Z

    .line 95
    return-void
.end method
