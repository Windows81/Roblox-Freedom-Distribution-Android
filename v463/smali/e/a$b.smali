.class final Le/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/e<",
        "Lc/ab;",
        "Lc/ab;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Le/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Le/a$b;

    invoke-direct {v0}, Le/a$b;-><init>()V

    sput-object v0, Le/a$b;->a:Le/a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/ab;)Lc/ab;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    check-cast p1, Lc/ab;

    invoke-virtual {p0, p1}, Le/a$b;->a(Lc/ab;)Lc/ab;

    move-result-object p1

    return-object p1
.end method
