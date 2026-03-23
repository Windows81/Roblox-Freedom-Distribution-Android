.class Landroid/support/design/widget/g$d;
.super Landroid/support/design/widget/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Landroid/support/design/widget/g$d;->a:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/g$e;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    .line 455
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/design/widget/g$d;->a:Landroid/support/design/widget/g;

    iget v0, v0, Landroid/support/design/widget/g;->h:F

    return v0
.end method
