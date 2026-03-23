.class final Le/a$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/e<",
        "Lc/ad;",
        "Lc/ad;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Le/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Le/a$c;

    invoke-direct {v0}, Le/a$c;-><init>()V

    sput-object v0, Le/a$c;->a:Le/a$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/ad;)Lc/ad;
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

    .line 83
    check-cast p1, Lc/ad;

    invoke-virtual {p0, p1}, Le/a$c;->a(Lc/ad;)Lc/ad;

    move-result-object p1

    return-object p1
.end method
