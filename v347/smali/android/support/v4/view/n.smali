.class public Landroid/support/v4/view/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v4/view/n;->a:Landroid/view/ViewGroup;

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/view/n;->b:I

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;I)V

    .line 100
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/n;->b:I

    .line 111
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 64
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 76
    iput p3, p0, Landroid/support/v4/view/n;->b:I

    .line 77
    return-void
.end method
