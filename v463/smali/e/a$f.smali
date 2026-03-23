.class final Le/a$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/e<",
        "Lc/ad;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Le/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Le/a$f;

    invoke-direct {v0}, Le/a$f;-><init>()V

    sput-object v0, Le/a$f;->a:Le/a$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    check-cast p1, Lc/ad;

    invoke-virtual {p0, p1}, Le/a$f;->a(Lc/ad;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/ad;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lc/ad;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
