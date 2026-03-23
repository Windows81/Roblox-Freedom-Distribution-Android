.class public Landroidx/databinding/j;
.super Landroidx/databinding/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/b<",
        "Landroidx/databinding/h$a;",
        "Landroidx/databinding/h;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroidx/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/b$a<",
            "Landroidx/databinding/h$a;",
            "Landroidx/databinding/h;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroidx/databinding/j$1;

    invoke-direct {v0}, Landroidx/databinding/j$1;-><init>()V

    sput-object v0, Landroidx/databinding/j;->a:Landroidx/databinding/b$a;

    return-void
.end method
