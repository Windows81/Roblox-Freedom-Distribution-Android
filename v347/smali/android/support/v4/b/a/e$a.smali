.class Landroid/support/v4/b/a/e$a;
.super Landroid/support/v4/b/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/b/a/c$a;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/support/v4/b/a/c$a;-><init>(Landroid/support/v4/b/a/c$a;Landroid/content/res/Resources;)V

    .line 151
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Landroid/support/v4/b/a/e;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/b/a/e;-><init>(Landroid/support/v4/b/a/c$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
