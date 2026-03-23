.class public final Landroid/support/v4/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/n$e;,
        Landroid/support/v4/widget/n$d;,
        Landroid/support/v4/widget/n$c;,
        Landroid/support/v4/widget/n$b;,
        Landroid/support/v4/widget/n$a;,
        Landroid/support/v4/widget/n$f;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/n$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Landroid/support/v4/os/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Landroid/support/v4/widget/n$e;

    invoke-direct {v0}, Landroid/support/v4/widget/n$e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    .line 383
    :goto_0
    return-void

    .line 372
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 373
    new-instance v0, Landroid/support/v4/widget/n$d;

    invoke-direct {v0}, Landroid/support/v4/widget/n$d;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    goto :goto_0

    .line 374
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 375
    new-instance v0, Landroid/support/v4/widget/n$c;

    invoke-direct {v0}, Landroid/support/v4/widget/n$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    goto :goto_0

    .line 376
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 377
    new-instance v0, Landroid/support/v4/widget/n$b;

    invoke-direct {v0}, Landroid/support/v4/widget/n$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    goto :goto_0

    .line 378
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 379
    new-instance v0, Landroid/support/v4/widget/n$a;

    invoke-direct {v0}, Landroid/support/v4/widget/n$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    goto :goto_0

    .line 381
    :cond_4
    new-instance v0, Landroid/support/v4/widget/n$f;

    invoke-direct {v0}, Landroid/support/v4/widget/n$f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)I
    .locals 1

    .prologue
    .line 455
    sget-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n$f;->a(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 1

    .prologue
    .line 476
    sget-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/n$f;->a(Landroid/widget/TextView;I)V

    .line 477
    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 403
    sget-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/n$f;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 404
    return-void
.end method

.method public static b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 484
    sget-object v0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/n$f;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/n$f;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
