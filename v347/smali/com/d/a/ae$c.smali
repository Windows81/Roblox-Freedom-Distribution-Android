.class Lcom/d/a/ae$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Lcom/d/a/j;
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcom/d/a/s;

    invoke-direct {v0, p0}, Lcom/d/a/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
