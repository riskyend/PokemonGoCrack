.class final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Object;

.field final synthetic val$defaultValueType:Ljava/lang/Class;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Ljava/lang/Class;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValueType:Ljava/lang/Class;

    iput p2, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$length:I

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    if-ne p1, p0, :cond_5

    .line 180
    :cond_4
    :goto_4
    return v3

    .line 165
    :cond_5
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValueType:Ljava/lang/Class;

    if-eq v5, v6, :cond_11

    :cond_f
    move v3, v4

    .line 166
    goto :goto_4

    .line 168
    :cond_11
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    iget v6, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$length:I

    if-eq v5, v6, :cond_1b

    move v3, v4

    goto :goto_4

    .line 170
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget v5, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$length:I

    if-ge v0, v5, :cond_4

    .line 171
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;->val$defaultValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, "value1":Ljava/lang/Object;
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 173
    .local v2, "value2":Ljava/lang/Object;
    if-ne v1, v2, :cond_2f

    .line 170
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 174
    :cond_2f
    if-eqz v1, :cond_2c

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    move v3, v4

    .line 176
    goto :goto_4
.end method
