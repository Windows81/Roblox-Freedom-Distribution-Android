.class Le/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/g;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Le/m;)Le/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c<",
        "Le/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Le/g;


# direct methods
.method constructor <init>(Le/g;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 37
    iput-object p1, p0, Le/g$1;->b:Le/g;

    iput-object p2, p0, Le/g$1;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;)Le/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/b<",
            "TR;>;)",
            "Le/b<",
            "TR;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Le/g$a;

    iget-object v1, p0, Le/g$1;->b:Le/g;

    iget-object v1, v1, Le/g;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Le/g$a;-><init>(Ljava/util/concurrent/Executor;Le/b;)V

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 39
    iget-object v0, p0, Le/g$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public synthetic b(Le/b;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Le/g$1;->a(Le/b;)Le/b;

    move-result-object p1

    return-object p1
.end method
