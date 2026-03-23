.class Lcom/c/a/ae$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Lcom/c/a/j;
    .locals 1

    .line 424
    new-instance v0, Lcom/c/a/s;

    invoke-direct {v0, p0}, Lcom/c/a/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
