.class public Lcom/roblox/abtesting/b;
.super Lcom/roblox/abtesting/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/roblox/client/ae/v$a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;-><init>(Lcom/roblox/client/ae/v$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            "Lcom/roblox/abtesting/a$a;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 25
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method a(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            "Lcom/roblox/abtesting/a$a;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 32
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    :cond_0
    return-void
.end method
