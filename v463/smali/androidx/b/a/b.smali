.class Landroidx/b/a/b;
.super Landroidx/b/a/d;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 29
    new-instance v0, Landroidx/b/a/b$1;

    invoke-direct {v0, p0}, Landroidx/b/a/b$1;-><init>(Landroidx/b/a/b;)V

    sput-object v0, Landroidx/b/a/h;->a:Landroidx/b/a/h$a;

    return-void
.end method
