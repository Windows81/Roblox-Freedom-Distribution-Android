.class Landroidx/k/c$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/c;->a(Landroid/view/ViewGroup;Landroidx/k/s;Landroidx/k/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/k/c$a;

.field final synthetic b:Landroidx/k/c;

.field private mViewBounds:Landroidx/k/c$a;


# direct methods
.method constructor <init>(Landroidx/k/c;Landroidx/k/c$a;)V
    .locals 0

    .line 323
    iput-object p1, p0, Landroidx/k/c$8;->b:Landroidx/k/c;

    iput-object p2, p0, Landroidx/k/c$8;->a:Landroidx/k/c$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    iget-object p1, p0, Landroidx/k/c$8;->a:Landroidx/k/c$a;

    iput-object p1, p0, Landroidx/k/c$8;->mViewBounds:Landroidx/k/c$a;

    return-void
.end method
