.class public final Lcom/google/c/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/a/g$a;,
        Lcom/google/c/a/g$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/c/a/c;->a(C)Lcom/google/c/a/c;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/g;->a:Lcom/google/c/a/c;

    return-void
.end method

.method public static a()Lcom/google/c/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/a/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/google/c/a/g$b;->c:Lcom/google/c/a/g$b;

    invoke-virtual {v0}, Lcom/google/c/a/g$b;->a()Lcom/google/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/c/a/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/c/a/g;->a()Lcom/google/c/a/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/a/g$a;-><init>(Ljava/lang/Object;Lcom/google/c/a/g$1;)V

    goto :goto_0
.end method
