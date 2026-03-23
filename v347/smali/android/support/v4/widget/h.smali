.class public final Landroid/support/v4/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/h$a;,
        Landroid/support/v4/widget/h$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/widget/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/support/v4/widget/h$a;

    invoke-direct {v0}, Landroid/support/v4/widget/h$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/h$b;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/support/v4/widget/h$b;

    invoke-direct {v0}, Landroid/support/v4/widget/h$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/h$b;

    goto :goto_0
.end method

.method public static a(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/h$b;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/h$b;->a(Landroid/widget/EdgeEffect;FF)V

    .line 177
    return-void
.end method
