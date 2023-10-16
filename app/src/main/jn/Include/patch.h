#include "KittyMemory/MemoryPatch.h"
#include "log.h"

std::vector<MemoryPatch> memoryPatches;
std::vector<uint64_t> offsetVector;

// Patching a offset without switch.
void patchOffset(const char *fileName, uint64_t offset, std::string hexBytes, bool isOn) {

    MemoryPatch patch = MemoryPatch::createWithHex(fileName, offset, hexBytes);

    //Check if offset exists in the offsetVector
    if (std::find(offsetVector.begin(), offsetVector.end(), offset) != offsetVector.end()) {
        //LOGE(OBFUSCATE("Already exists"));
        std::vector<uint64_t>::iterator itr = std::find(offsetVector.begin(), offsetVector.end(), offset);
        patch = memoryPatches[std::distance(offsetVector.begin(), itr)]; //Get index of memoryPatches vector
    } else {
        memoryPatches.push_back(patch);
        offsetVector.push_back(offset);
        //LOGI(OBFUSCATE("Added"));
    }

    if (!patch.isValid()) {
        LOGE("Failing offset: 0x%llu, please re-check the hex", offset);
        return;
    }
    if (isOn) {
        if (!patch.Modify()) {
            LOGE("Something went wrong while patching this offset: 0x%llu", offset);
        }
    } else {
        if (!patch.Restore()) {
            LOGE("Something went wrong while restoring this offset: 0x%llu", offset);
        }
    }
}

