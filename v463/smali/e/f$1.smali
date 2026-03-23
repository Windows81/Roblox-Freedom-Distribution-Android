.class Le/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Le/m;)Le/c;
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

.field final synthetic b:Le/f;


# direct methods
.method constructor <init>(Le/f;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 36
    iput-object p1, p0, Le/f$1;->b:Le/f;

    iput-object p2, p0, Le/f$1;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;)Le/b;
    .locals 0
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

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 38
    iget-object v0, p0, Le/f$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public synthetic b(Le/b;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Le/f$1;->a(Le/b;)Le/b;

    move-result-object p1

    return-object p1
.end method
